.class Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;
.super Landroid/os/AsyncTask;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor$6;->onBitmapReady(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor$6;)V
    .registers 2
    .param p1, "this$1"    # Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    .line 730
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "strings"    # [Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 741
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setDrawingCacheEnabled(Z)V

    .line 742
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/SaveSettings;->isTransparencyEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 743
    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3d

    :cond_31
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 744
    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 742
    :goto_3d
    return-object v0

    .line 746
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 730
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 752
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 753
    if-eqz p1, :cond_1e

    .line 754
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/SaveSettings;->isClearViewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearAllViews()V

    .line 755
    :cond_16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    invoke-interface {v0, p1}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onBitmapReady(Landroid/graphics/Bitmap;)V

    goto :goto_2c

    .line 757
    :cond_1e
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to load the bitmap"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onFailure(Ljava/lang/Exception;)V

    .line 759
    :goto_2c
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 730
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 733
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 734
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearHelperBox()V

    .line 735
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$6$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$6;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setDrawingCacheEnabled(Z)V

    .line 736
    return-void
.end method
