.class public Lja/burhanrashid52/photoeditor/PhotoEditor;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/BrushViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;,
        Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoEditor"


# instance fields
.field private addedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

.field private context:Landroid/content/Context;

.field private deleteView:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private isTextPinchZoomable:Z

.field private mDefaultEmojiTypeface:Landroid/graphics/Typeface;

.field private mDefaultTextTypeface:Landroid/graphics/Typeface;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

.field private parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

.field private redoViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)V
    .registers 4
    .param p1, "builder"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$000(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->context:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$100(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Lja/burhanrashid52/photoeditor/PhotoEditorView;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 61
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$200(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->imageView:Landroid/widget/ImageView;

    .line 62
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$300(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->deleteView:Landroid/view/View;

    .line 63
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$400(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Lja/burhanrashid52/photoeditor/BrushDrawingView;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    .line 64
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$500(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->isTextPinchZoomable:Z

    .line 65
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$600(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultTextTypeface:Landroid/graphics/Typeface;

    .line 66
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;->access$700(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultEmojiTypeface:Landroid/graphics/Typeface;

    .line 67
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    invoke-virtual {v0, p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushViewChangeListener(Lja/burhanrashid52/photoeditor/BrushViewChangeListener;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;Lja/burhanrashid52/photoeditor/PhotoEditor$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/PhotoEditor$1;

    .line 41
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/PhotoEditorView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 41
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    return-object v0
.end method

.method static synthetic access$800(Lja/burhanrashid52/photoeditor/PhotoEditor;)Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;

    .line 41
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    return-object v0
.end method

.method static synthetic access$900(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 3
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditor;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 41
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->viewUndo(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    return-void
.end method

.method private addViewToParent(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 6
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 287
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v1, p1, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v1, :cond_23

    .line 293
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onAddViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 294
    :cond_23
    return-void
.end method

.method private clearBrushAllViews()V
    .registers 2

    .line 545
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 546
    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->clearAll()V

    .line 547
    :cond_7
    return-void
.end method

.method private static convertEmoji(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "emoji"    # Ljava/lang/String;

    .line 774
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 775
    .local v0, "convertEmojiToInt":I
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v1

    .line 778
    .local v0, "returnedEmoji":Ljava/lang/String;
    goto :goto_1a

    .line 776
    .end local v0    # "returnedEmoji":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, ""

    move-object v0, v1

    .line 779
    .local v0, "returnedEmoji":Ljava/lang/String;
    :goto_1a
    return-object v0
.end method

.method public static getEmojis(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "convertedEmojiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lja/burhanrashid52/photoeditor/R$array;->photo_editor_emoji:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "emojiList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 926
    .local v4, "emojiUnicode":Ljava/lang/String;
    invoke-static {v4}, Lja/burhanrashid52/photoeditor/PhotoEditor;->convertEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v4    # "emojiUnicode":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 928
    :cond_1f
    return-object v0
.end method

.method private getLayout(Lja/burhanrashid52/photoeditor/ViewType;)Landroid/view/View;
    .registers 8
    .param p1, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "rootView":Landroid/view/View;
    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoEditor$7;->$SwitchMap$ja$burhanrashid52$photoeditor$ViewType:[I

    invoke-virtual {p1}, Lja/burhanrashid52/photoeditor/ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3f

    const/4 v5, 0x2

    if-eq v1, v5, :cond_36

    const/4 v5, 0x3

    if-eq v1, v5, :cond_16

    goto :goto_61

    .line 338
    :cond_16
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lja/burhanrashid52/photoeditor/R$layout;->view_photo_editor_text:I

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 339
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->tvPhotoEditorText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 340
    .local v1, "txtTextEmoji":Landroid/widget/TextView;
    if-eqz v1, :cond_61

    .line 341
    iget-object v5, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultEmojiTypeface:Landroid/graphics/Typeface;

    if-eqz v5, :cond_2f

    .line 342
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    :cond_2f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 345
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_61

    .line 335
    .end local v1    # "txtTextEmoji":Landroid/widget/TextView;
    :cond_36
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lja/burhanrashid52/photoeditor/R$layout;->view_photo_editor_image:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 336
    goto :goto_61

    .line 325
    :cond_3f
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lja/burhanrashid52/photoeditor/R$layout;->view_photo_editor_text:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 326
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->tvPhotoEditorText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    .local v1, "txtText":Landroid/widget/TextView;
    if-eqz v1, :cond_61

    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultTextTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_61

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultEmojiTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_61

    .line 330
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mDefaultTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 350
    .end local v1    # "txtText":Landroid/widget/TextView;
    :cond_61
    :goto_61
    if-eqz v0, :cond_79

    .line 353
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorClose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 355
    .local v1, "imgClose":Landroid/widget/ImageView;
    move-object v2, v0

    .line 356
    .local v2, "finalRootView":Landroid/view/View;
    if-eqz v1, :cond_79

    .line 357
    new-instance v3, Lja/burhanrashid52/photoeditor/PhotoEditor$4;

    invoke-direct {v3, p0, v2, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor$4;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .end local v1    # "imgClose":Landroid/widget/ImageView;
    .end local v2    # "finalRootView":Landroid/view/View;
    :cond_79
    return-object v0
.end method

.method private getMultiTouchListener()Lja/burhanrashid52/photoeditor/MultiTouchListener;
    .registers 8

    .line 303
    new-instance v6, Lja/burhanrashid52/photoeditor/MultiTouchListener;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->deleteView:Landroid/view/View;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->imageView:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->isTextPinchZoomable:Z

    iget-object v5, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lja/burhanrashid52/photoeditor/MultiTouchListener;-><init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;ZLja/burhanrashid52/photoeditor/OnPhotoEditorListener;)V

    .line 312
    .local v0, "multiTouchListener":Lja/burhanrashid52/photoeditor/MultiTouchListener;
    return-object v0
.end method

.method private viewUndo(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V
    .registers 5
    .param p1, "removedView"    # Landroid/view/View;
    .param p2, "viewType"    # Lja/burhanrashid52/photoeditor/ViewType;

    .line 484
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 485
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 486
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->removeView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v0, :cond_2c

    .line 490
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onRemoveViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 494
    :cond_2c
    return-void
.end method


# virtual methods
.method public addEmoji(Landroid/graphics/Typeface;Ljava/lang/String;)V
    .registers 9
    .param p1, "emojiTypeface"    # Landroid/graphics/Typeface;
    .param p2, "emojiName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 252
    sget-object v0, Lja/burhanrashid52/photoeditor/ViewType;->EMOJI:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getLayout(Lja/burhanrashid52/photoeditor/ViewType;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "emojiRootView":Landroid/view/View;
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->tvPhotoEditorText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    .local v1, "emojiTextView":Landroid/widget/TextView;
    sget v2, Lja/burhanrashid52/photoeditor/R$id;->frmBorder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 255
    .local v2, "frmBorder":Landroid/widget/FrameLayout;
    sget v3, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorClose:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 257
    .local v3, "imgClose":Landroid/widget/ImageView;
    if-eqz p1, :cond_29

    .line 258
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    :cond_29
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getMultiTouchListener()Lja/burhanrashid52/photoeditor/MultiTouchListener;

    move-result-object v4

    .line 263
    .local v4, "multiTouchListener":Lja/burhanrashid52/photoeditor/MultiTouchListener;
    new-instance v5, Lja/burhanrashid52/photoeditor/PhotoEditor$3;

    invoke-direct {v5, p0, v2, v3}, Lja/burhanrashid52/photoeditor/PhotoEditor$3;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->setOnGestureControl(Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;)V

    .line 276
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    sget-object v5, Lja/burhanrashid52/photoeditor/ViewType;->EMOJI:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0, v5}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addViewToParent(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 278
    return-void
.end method

.method public addEmoji(Ljava/lang/String;)V
    .registers 3
    .param p1, "emojiName"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addEmoji(Landroid/graphics/Typeface;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public addImage(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "desiredImage"    # Landroid/graphics/Bitmap;

    .line 80
    sget-object v0, Lja/burhanrashid52/photoeditor/ViewType;->IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getLayout(Lja/burhanrashid52/photoeditor/ViewType;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "imageRootView":Landroid/view/View;
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, "imageView":Landroid/widget/ImageView;
    sget v2, Lja/burhanrashid52/photoeditor/R$id;->frmBorder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 83
    .local v2, "frmBorder":Landroid/widget/FrameLayout;
    sget v3, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorClose:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 85
    .local v3, "imgClose":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getMultiTouchListener()Lja/burhanrashid52/photoeditor/MultiTouchListener;

    move-result-object v4

    .line 88
    .local v4, "multiTouchListener":Lja/burhanrashid52/photoeditor/MultiTouchListener;
    new-instance v5, Lja/burhanrashid52/photoeditor/PhotoEditor$1;

    invoke-direct {v5, p0, v2, v3}, Lja/burhanrashid52/photoeditor/PhotoEditor$1;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->setOnGestureControl(Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    sget-object v5, Lja/burhanrashid52/photoeditor/ViewType;->IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0, v5}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addViewToParent(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 107
    return-void
.end method

.method public addText(Landroid/graphics/Typeface;Ljava/lang/String;I)V
    .registers 5
    .param p1, "textTypeface"    # Landroid/graphics/Typeface;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "colorCodeTextView"    # I

    .line 131
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;-><init>()V

    .line 133
    .local v0, "styleBuilder":Lja/burhanrashid52/photoeditor/TextStyleBuilder;
    invoke-virtual {v0, p3}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->withTextColor(I)V

    .line 134
    if-eqz p1, :cond_d

    .line 135
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->withTextFont(Landroid/graphics/Typeface;)V

    .line 138
    :cond_d
    invoke-virtual {p0, p2, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addText(Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V

    .line 139
    return-void
.end method

.method public addText(Ljava/lang/String;I)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "colorCodeTextView"    # I

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addText(Landroid/graphics/Typeface;Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method public addText(Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "styleBuilder"    # Lja/burhanrashid52/photoeditor/TextStyleBuilder;

    .line 150
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 151
    sget-object v0, Lja/burhanrashid52/photoeditor/ViewType;->TEXT:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getLayout(Lja/burhanrashid52/photoeditor/ViewType;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "textRootView":Landroid/view/View;
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->tvPhotoEditorText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 153
    .local v7, "textInputTv":Landroid/widget/TextView;
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorClose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    .line 154
    .local v8, "imgClose":Landroid/widget/ImageView;
    sget v1, Lja/burhanrashid52/photoeditor/R$id;->frmBorder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    .line 156
    .local v9, "frmBorder":Landroid/widget/FrameLayout;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    if-eqz p2, :cond_2f

    .line 158
    invoke-virtual {p2, v7}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyStyle(Landroid/widget/TextView;)V

    .line 160
    :cond_2f
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->getMultiTouchListener()Lja/burhanrashid52/photoeditor/MultiTouchListener;

    move-result-object v10

    .line 161
    .local v10, "multiTouchListener":Lja/burhanrashid52/photoeditor/MultiTouchListener;
    new-instance v11, Lja/burhanrashid52/photoeditor/PhotoEditor$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v9

    move-object v4, v8

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lja/burhanrashid52/photoeditor/PhotoEditor$2;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->setOnGestureControl(Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;)V

    .line 180
    invoke-virtual {v0, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->TEXT:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-direct {p0, v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->addViewToParent(Landroid/view/View;Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 182
    return-void
.end method

.method public brushEraser()V
    .registers 2

    .line 471
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 472
    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->brushEraser()V

    .line 473
    :cond_7
    return-void
.end method

.method public clearAllViews()V
    .registers 4

    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 555
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->removeView(Landroid/view/View;)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 557
    .end local v0    # "i":I
    :cond_19
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 558
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;)V

    .line 560
    :cond_2a
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 561
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->clearBrushAllViews()V

    .line 563
    return-void
.end method

.method public clearHelperBox()V
    .registers 6

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 571
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v1, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 572
    .local v1, "childAt":Landroid/view/View;
    sget v2, Lja/burhanrashid52/photoeditor/R$id;->frmBorder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 573
    .local v2, "frmBorder":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_1d

    .line 574
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 576
    :cond_1d
    sget v3, Lja/burhanrashid52/photoeditor/R$id;->imgPhotoEditorClose:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 577
    .local v3, "imgClose":Landroid/widget/ImageView;
    if-eqz v3, :cond_2c

    .line 578
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    .end local v1    # "childAt":Landroid/view/View;
    .end local v2    # "frmBorder":Landroid/widget/FrameLayout;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method public editText(Landroid/view/View;Landroid/graphics/Typeface;Ljava/lang/String;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textTypeface"    # Landroid/graphics/Typeface;
    .param p3, "inputText"    # Ljava/lang/String;
    .param p4, "colorCode"    # I

    .line 204
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;-><init>()V

    .line 205
    .local v0, "styleBuilder":Lja/burhanrashid52/photoeditor/TextStyleBuilder;
    invoke-virtual {v0, p4}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->withTextColor(I)V

    .line 206
    if-eqz p2, :cond_d

    .line 207
    invoke-virtual {v0, p2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->withTextFont(Landroid/graphics/Typeface;)V

    .line 210
    :cond_d
    invoke-virtual {p0, p1, p3, v0}, Lja/burhanrashid52/photoeditor/PhotoEditor;->editText(Landroid/view/View;Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V

    .line 211
    return-void
.end method

.method public editText(Landroid/view/View;Ljava/lang/String;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "inputText"    # Ljava/lang/String;
    .param p3, "colorCode"    # I

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lja/burhanrashid52/photoeditor/PhotoEditor;->editText(Landroid/view/View;Landroid/graphics/Typeface;Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public editText(Landroid/view/View;Ljava/lang/String;Lja/burhanrashid52/photoeditor/TextStyleBuilder;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "inputText"    # Ljava/lang/String;
    .param p3, "styleBuilder"    # Lja/burhanrashid52/photoeditor/TextStyleBuilder;

    .line 221
    sget v0, Lja/burhanrashid52/photoeditor/R$id;->tvPhotoEditorText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    .local v0, "inputTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_37

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 223
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    if-eqz p3, :cond_20

    .line 225
    invoke-virtual {p3, v0}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyStyle(Landroid/widget/TextView;)V

    .line 227
    :cond_20
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 229
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_37

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

.method public getBrushColor()I
    .registers 2

    .line 457
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_9

    .line 458
    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->getBrushColor()I

    move-result v0

    return v0

    .line 459
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getBrushDrawableMode()Ljava/lang/Boolean;
    .registers 2

    .line 382
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->getBrushDrawingMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBrushSize()F
    .registers 2

    .line 447
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_9

    .line 448
    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->getBrushSize()F

    move-result v0

    return v0

    .line 449
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getEraserSize()F
    .registers 2

    .line 439
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->getEraserSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCacheEmpty()Z
    .registers 2

    .line 797
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onStartDrawing()V
    .registers 3

    .line 828
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v0, :cond_9

    .line 829
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onStartViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 831
    :cond_9
    return-void
.end method

.method public onStopDrawing()V
    .registers 3

    .line 835
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v0, :cond_9

    .line 836
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onStopViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 838
    :cond_9
    return-void
.end method

.method public onViewAdd(Lja/burhanrashid52/photoeditor/BrushDrawingView;)V
    .registers 5
    .param p1, "brushDrawingView"    # Lja/burhanrashid52/photoeditor/BrushDrawingView;

    .line 803
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 804
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 806
    :cond_13
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v0, :cond_27

    .line 808
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onAddViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 810
    :cond_27
    return-void
.end method

.method public onViewRemoved(Lja/burhanrashid52/photoeditor/BrushDrawingView;)V
    .registers 5
    .param p1, "brushDrawingView"    # Lja/burhanrashid52/photoeditor/BrushDrawingView;

    .line 814
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 815
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 816
    .local v0, "removeView":Landroid/view/View;
    instance-of v1, v0, Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-nez v1, :cond_1f

    .line 817
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v1, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->removeView(Landroid/view/View;)V

    .line 819
    :cond_1f
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v0    # "removeView":Landroid/view/View;
    :cond_24
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v0, :cond_33

    .line 822
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onRemoveViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 824
    :cond_33
    return-void
.end method

.method public redo()Z
    .registers 8

    .line 527
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_55

    .line 528
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 529
    .local v0, "redoView":Landroid/view/View;
    instance-of v3, v0, Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v3, :cond_27

    .line 530
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->redo()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 532
    :cond_27
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 533
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v3, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;)V

    .line 534
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 537
    .local v3, "viewTag":Ljava/lang/Object;
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v4, :cond_55

    if-eqz v3, :cond_55

    instance-of v5, v3, Lja/burhanrashid52/photoeditor/ViewType;

    if-eqz v5, :cond_55

    .line 538
    move-object v5, v3

    check-cast v5, Lja/burhanrashid52/photoeditor/ViewType;

    iget-object v6, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onAddViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 541
    .end local v0    # "redoView":Landroid/view/View;
    .end local v3    # "viewTag":Ljava/lang/Object;
    :cond_55
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x1

    :cond_5e
    return v1
.end method

.method public saveAsBitmap(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
    .registers 3
    .param p1, "onSaveBitmap"    # Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    .line 714
    new-instance v0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->build()Lja/burhanrashid52/photoeditor/SaveSettings;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditor;->saveAsBitmap(Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    .line 715
    return-void
.end method

.method public saveAsBitmap(Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
    .registers 5
    .param p1, "saveSettings"    # Lja/burhanrashid52/photoeditor/SaveSettings;
    .param p2, "onSaveBitmap"    # Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    .line 727
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    new-instance v1, Lja/burhanrashid52/photoeditor/PhotoEditor$6;

    invoke-direct {v1, p0, p1, p2}, Lja/burhanrashid52/photoeditor/PhotoEditor$6;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->saveFilter(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    .line 769
    return-void
.end method

.method public saveAsFile(Ljava/lang/String;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V
    .registers 4
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "onSaveListener"    # Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    .line 630
    new-instance v0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->build()Lja/burhanrashid52/photoeditor/SaveSettings;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lja/burhanrashid52/photoeditor/PhotoEditor;->saveAsFile(Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V

    .line 631
    return-void
.end method

.method public saveAsFile(Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V
    .registers 6
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "saveSettings"    # Lja/burhanrashid52/photoeditor/SaveSettings;
    .param p3, "onSaveListener"    # Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    new-instance v1, Lja/burhanrashid52/photoeditor/PhotoEditor$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lja/burhanrashid52/photoeditor/PhotoEditor$5;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditor;Ljava/lang/String;Lja/burhanrashid52/photoeditor/SaveSettings;Lja/burhanrashid52/photoeditor/PhotoEditor$OnSaveListener;)V

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->saveFilter(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    .line 704
    return-void
.end method

.method public setBrushColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 413
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 414
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushColor(I)V

    .line 415
    :cond_7
    return-void
.end method

.method public setBrushDrawingMode(Z)V
    .registers 3
    .param p1, "brushDrawingMode"    # Z

    .line 374
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 375
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 376
    :cond_7
    return-void
.end method

.method setBrushEraserColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 430
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 431
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushEraserColor(I)V

    .line 432
    :cond_7
    return-void
.end method

.method public setBrushEraserSize(F)V
    .registers 3
    .param p1, "brushEraserSize"    # F

    .line 425
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 426
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushEraserSize(F)V

    .line 427
    :cond_7
    return-void
.end method

.method public setBrushSize(F)V
    .registers 3
    .param p1, "size"    # F

    .line 391
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_7

    .line 392
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushSize(F)V

    .line 393
    :cond_7
    return-void
.end method

.method public setFilterEffect(Lja/burhanrashid52/photoeditor/CustomEffect;)V
    .registers 3
    .param p1, "customEffect"    # Lja/burhanrashid52/photoeditor/CustomEffect;

    .line 589
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setFilterEffect(Lja/burhanrashid52/photoeditor/CustomEffect;)V

    .line 590
    return-void
.end method

.method public setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V
    .registers 3
    .param p1, "filterType"    # Lja/burhanrashid52/photoeditor/PhotoFilter;

    .line 598
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 599
    return-void
.end method

.method public setOnPhotoEditorListener(Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;)V
    .registers 2
    .param p1, "onPhotoEditorListener"    # Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    .line 788
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    .line 789
    return-void
.end method

.method public setOpacity(I)V
    .registers 7
    .param p1, "opacity"    # I

    .line 401
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v0, :cond_16

    .line 402
    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double v1, v1, v3

    double-to-int p1, v1

    .line 403
    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setOpacity(I)V

    .line 405
    :cond_16
    return-void
.end method

.method public undo()Z
    .registers 8

    .line 502
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_57

    .line 503
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 504
    .local v0, "removeView":Landroid/view/View;
    instance-of v3, v0, Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v3, :cond_27

    .line 505
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->brushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->undo()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 507
    :cond_27
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 508
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->parentView:Lja/burhanrashid52/photoeditor/PhotoEditorView;

    invoke-virtual {v3, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->removeView(Landroid/view/View;)V

    .line 509
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->redoViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v3, :cond_57

    .line 512
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 513
    .local v3, "viewTag":Ljava/lang/Object;
    if-eqz v3, :cond_57

    instance-of v4, v3, Lja/burhanrashid52/photoeditor/ViewType;

    if-eqz v4, :cond_57

    .line 514
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    move-object v5, v3

    check-cast v5, Lja/burhanrashid52/photoeditor/ViewType;

    iget-object v6, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onRemoveViewListener(Lja/burhanrashid52/photoeditor/ViewType;I)V

    .line 518
    .end local v0    # "removeView":Landroid/view/View;
    .end local v3    # "viewTag":Ljava/lang/Object;
    :cond_57
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditor;->addedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    :cond_60
    return v1
.end method
