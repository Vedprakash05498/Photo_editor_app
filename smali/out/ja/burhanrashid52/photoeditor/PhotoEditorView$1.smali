.class Lja/burhanrashid52/photoeditor/PhotoEditorView$1;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/PhotoEditorView;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditorView;)V
    .registers 2
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 100
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$1;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$1;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->access$000(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/ImageFilterView;

    move-result-object v0

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 104
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView$1;->this$0:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->access$000(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/ImageFilterView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setSourceBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapLoaded() called with: sourceBitmap = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
