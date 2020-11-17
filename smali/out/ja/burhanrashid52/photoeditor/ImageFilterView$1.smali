.class Lja/burhanrashid52/photoeditor/ImageFilterView$1;
.super Ljava/lang/Object;
.source "ImageFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/burhanrashid52/photoeditor/ImageFilterView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/ImageFilterView;

.field final synthetic val$mFilterBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/ImageFilterView;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "this$0"    # Lja/burhanrashid52/photoeditor/ImageFilterView;

    .line 108
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView$1;->this$0:Lja/burhanrashid52/photoeditor/ImageFilterView;

    iput-object p2, p0, Lja/burhanrashid52/photoeditor/ImageFilterView$1;->val$mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 111
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView$1;->this$0:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->access$000(Lja/burhanrashid52/photoeditor/ImageFilterView;)Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    move-result-object v0

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView$1;->val$mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onBitmapReady(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method
