.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

.field final synthetic val$editText:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;Landroid/widget/AutoCompleteTextView;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    .line 85
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iput-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->val$editText:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->val$editText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 89
    .local v0, "isPopupShowing":Z
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iget-object v1, v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V

    .line 90
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iget-object v1, v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$202(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    .line 91
    return-void
.end method
