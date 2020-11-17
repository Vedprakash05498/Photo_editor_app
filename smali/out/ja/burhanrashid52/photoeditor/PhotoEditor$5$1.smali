.class Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;
.super Landroid/os/AsyncTask;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor$5;->onBitmapReady(Landroid/graphics/Bitmap;)V
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
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor$5;)V
    .registers 2
    .param p1, "this$1"    # Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    .line 650
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Exception;
    .registers 8
    .param p1, "strings"    # [Ljava/lang/String;

    .line 663
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v2, v2, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .local v1, "file":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 666
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v3, v3, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v3}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 667
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v3, v3, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v3}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setDrawingCacheEnabled(Z)V

    .line 668
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v3, v3, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/SaveSettings;->isTransparencyEnabled()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v3, v3, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 669
    invoke-static {v3}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lja/burhanrashid52/photoeditor/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_4e

    :cond_42
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v3, v3, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 670
    invoke-static {v3}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_4e
    nop

    .line 671
    .local v3, "drawingCache":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v4, v4, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v4}, Lja/burhanrashid52/photoeditor/SaveSettings;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget-object v5, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v5, v5, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v5}, Lja/burhanrashid52/photoeditor/SaveSettings;->getCompressQuality()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 673
    .end local v3    # "drawingCache":Landroid/graphics/Bitmap;
    :cond_62
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 674
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 675
    const-string v3, "Filed Saved Successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6d} :catch_6f

    .line 676
    const/4 v0, 0x0

    return-object v0

    .line 677
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catch_6f
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    const-string v3, "Failed to save File"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 650
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 686
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 687
    if-nez p1, :cond_22

    .line 689
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/SaveSettings;->isClearViewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearAllViews()V

    .line 690
    :cond_16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$onSaveListener:Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v1, v1, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_29

    .line 692
    :cond_22
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$onSaveListener:Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    invoke-interface {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;->onFailure(Ljava/lang/Exception;)V

    .line 694
    :goto_29
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 650
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 654
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 655
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearHelperBox()V

    .line 656
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->this$1:Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    iget-object v0, v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setDrawingCacheEnabled(Z)V

    .line 657
    return-void
.end method
