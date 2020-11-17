.class Lja/burhanrashid52/photoeditor/PhotoEditor$5;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/OnSaveBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;->saveAsFile(Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$onSaveListener:Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

.field final synthetic val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V
    .registers 5
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 647
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditor;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$saveSettings:Lja/burhanrashid52/photoeditor/SaveSettings;

    iput-object p4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$onSaveListener:Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "saveBitmap"    # Landroid/graphics/Bitmap;

    .line 650
    new-instance v0, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;

    invoke-direct {v0, p0}, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor$5;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 696
    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor$5$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 697
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 701
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$5;->val$onSaveListener:Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    invoke-interface {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;->onFailure(Ljava/lang/Exception;)V

    .line 702
    return-void
.end method
