.class Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;
.super Ljava/lang/Object;
.source "TextEditorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    .line 109
    iput-object p1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$200(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 113
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->dismiss()V

    .line 114
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$100(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "inputText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$300(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 116
    iget-object v1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$300(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v2}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$000(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;->onDone(Ljava/lang/String;I)V

    .line 118
    :cond_3e
    return-void
.end method
