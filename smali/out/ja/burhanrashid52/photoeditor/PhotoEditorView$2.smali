.class Lja/burhanrashid52/photoeditor/PhotoEditorView$2;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/OnSaveBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditorView;->saveFilter(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

.field final synthetic val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditorView;Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
    .registers 3
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 138
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "saveBitmap"    # Landroid/graphics/Bitmap;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditorView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->access$100(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/FilterImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/FilterImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->access$000(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/ImageFilterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    invoke-interface {v0, p1}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onBitmapReady(Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 149
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;->val$onSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    invoke-interface {v0, p1}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onFailure(Ljava/lang/Exception;)V

    .line 150
    return-void
.end method
