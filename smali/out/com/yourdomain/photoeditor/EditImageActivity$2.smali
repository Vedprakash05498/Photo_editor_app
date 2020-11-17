.class Lcom/yourdomain/photoeditor/EditImageActivity$2;
.super Ljava/lang/Object;
.source "EditImageActivity.java"

# interfaces
.implements Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/EditImageActivity;->onEditTextChangeListener(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EditImageActivity;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 168
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$2;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/EditImageActivity$2;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputText"    # Ljava/lang/String;
    .param p2, "colorCode"    # I

    .line 171
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;-><init>()V

    .line 172
    .local v0, "styleBuilder":Lja/burhanrashid52/photoeditor/TextStyleBuilder;
    invoke-virtual {v0, p2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->withTextColor(I)V

    .line 174
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$2;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/EditImageActivity;->mPhotoEditor:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iget-object v2, p0, Lcom/yourdomain/photoeditor/EditImageActivity$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->editText(Landroid/view/View;Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V

    .line 175
    iget-object v1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$2;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$000(Lcom/yourdomain/photoeditor/EditImageActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    return-void
.end method
