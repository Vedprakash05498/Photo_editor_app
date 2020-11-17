.class public Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

.field private context:Landroid/content/Context;

.field private deleteView:Landroid/view/View;

.field private emojiTypeface:Landroid/graphics/Typeface;

.field private imageView:Landroid/widget/ImageView;

.field private isTextPinchZoomable:Z

.field private parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

.field private textTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lja/burhanrashid52/photoeditor/PhotoEditorView;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoEditorView"    # Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->isTextPinchZoomable:Z

    .line 864
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->context:Landroid/content/Context;

    .line 865
    iput-object p2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 866
    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getSource()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->imageView:Landroid/widget/ImageView;

    .line 867
    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getBrushDrawingView()Lja/burhanrashid52/photoeditor/BrushDrawingView;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    .line 868
    return-void
.end method

.method static synthetic access$000(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Lja/burhanrashid52/photoeditor/PhotoEditorView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    return-object v0
.end method

.method static synthetic access$200(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->deleteView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Lja/burhanrashid52/photoeditor/BrushDrawingView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    return-object v0
.end method

.method static synthetic access$500(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->isTextPinchZoomable:Z

    return v0
.end method

.method static synthetic access$600(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->textTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$700(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 844
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->emojiTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public build()Lja/burhanrashid52/photoeditor/PhotoEditor;
    .registers 3

    .line 912
    new-instance v0, Lja/burhanrashid52/photoeditor/PhotoEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;Lja/burhanrashid52/photoeditor/PhotoEditor$1;)V

    return-object v0
.end method

.method public setDefaultEmojiTypeface(Landroid/graphics/Typeface;)Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
    .registers 2
    .param p1, "emojiTypeface"    # Landroid/graphics/Typeface;

    .line 893
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->emojiTypeface:Landroid/graphics/Typeface;

    .line 894
    return-object p0
.end method

.method public setDefaultTextTypeface(Landroid/graphics/Typeface;)Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
    .registers 2
    .param p1, "textTypeface"    # Landroid/graphics/Typeface;

    .line 882
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->textTypeface:Landroid/graphics/Typeface;

    .line 883
    return-object p0
.end method

.method setDeleteView(Landroid/view/View;)Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
    .registers 2
    .param p1, "deleteView"    # Landroid/view/View;

    .line 871
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->deleteView:Landroid/view/View;

    .line 872
    return-object p0
.end method

.method public setPinchTextScalable(Z)Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
    .registers 2
    .param p1, "isTextPinchZoomable"    # Z

    .line 904
    iput-boolean p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->isTextPinchZoomable:Z

    .line 905
    return-object p0
.end method
