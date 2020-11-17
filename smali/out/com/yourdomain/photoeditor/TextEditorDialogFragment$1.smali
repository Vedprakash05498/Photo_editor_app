.class Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;
.super Ljava/lang/Object;
.source "TextEditorDialogFragment.java"

# interfaces
.implements Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;


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

    .line 95
    iput-object p1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorPickerClickListener(I)V
    .registers 3
    .param p1, "colorCode"    # I

    .line 98
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v0, p1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$002(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;I)I

    .line 99
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;->this$0:Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->access$100(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 100
    return-void
.end method
