.class Lcom/yourdomain/photoeditor/EmojiBSFragment$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "EmojiBSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/EmojiBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EmojiBSFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/EmojiBSFragment;

    .line 32
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 44
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 36
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 37
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EmojiBSFragment$1;->this$0:Lcom/yourdomain/photoeditor/EmojiBSFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/EmojiBSFragment;->dismiss()V

    .line 40
    :cond_8
    return-void
.end method
