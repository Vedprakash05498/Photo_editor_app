.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 691
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 694
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_20

    .line 695
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 696
    .local v0, "insets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_20

    .line 697
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$302(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 698
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$800(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 701
    .end local v0    # "insets":Landroid/view/WindowInsets;
    :cond_20
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 705
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 710
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    :cond_12
    return-void
.end method