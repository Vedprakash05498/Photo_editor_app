.class Lcom/yourdomain/photoeditor/EditImageActivity$3;
.super Ljava/lang/Object;
.source "EditImageActivity.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/EditImageActivity;->saveImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yourdomain/photoeditor/EditImageActivity;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/EditImageActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/EditImageActivity;

    .line 251
    iput-object p1, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 261
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$400(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    .line 262
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    const-string v1, "Failed to save Image"

    invoke-static {v0, v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$500(Lcom/yourdomain/photoeditor/EditImageActivity;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$100(Lcom/yourdomain/photoeditor/EditImageActivity;)V

    .line 255
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    const-string v1, "Image Saved Successfully"

    invoke-static {v0, v1}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$200(Lcom/yourdomain/photoeditor/EditImageActivity;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/yourdomain/photoeditor/EditImageActivity$3;->this$0:Lcom/yourdomain/photoeditor/EditImageActivity;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/EditImageActivity;->access$300(Lcom/yourdomain/photoeditor/EditImageActivity;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getSource()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 257
    return-void
.end method
