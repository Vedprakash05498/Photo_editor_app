.class public Lja/burhanrashid52/photoeditor/PhotoEditorView;
.super Landroid/widget/RelativeLayout;
.source "PhotoEditorView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoEditorView"

.field private static final brushSrcId:I = 0x2

.field private static final glFilterId:I = 0x3

.field private static final imgSrcId:I = 0x1


# instance fields
.field private mBrushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

.field private mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

.field private mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->init(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->init(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-direct {p0, p2}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->init(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/ImageFilterView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 30
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    return-object v0
.end method

.method static synthetic access$100(Lja/burhanrashid52/photoeditor/PhotoEditorView;)Lja/burhanrashid52/photoeditor/FilterImageView;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/PhotoEditorView;

    .line 30
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    new-instance v0, Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView;->setId(I)V

    .line 65
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView;->setAdjustViewBounds(Z)V

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "imgSrcParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    if-eqz p1, :cond_39

    .line 70
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lja/burhanrashid52/photoeditor/R$styleable;->PhotoEditorView:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 71
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lja/burhanrashid52/photoeditor/R$styleable;->PhotoEditorView_photo_src:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 72
    .local v6, "imgSrcDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_39

    .line 73
    iget-object v7, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {v7, v6}, Lja/burhanrashid52/photoeditor/FilterImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "imgSrcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_39
    new-instance v5, Lja/burhanrashid52/photoeditor/BrushDrawingView;

    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lja/burhanrashid52/photoeditor/BrushDrawingView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mBrushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    .line 79
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setVisibility(I)V

    .line 80
    iget-object v5, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mBrushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setId(I)V

    .line 82
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v5, "brushParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    const/4 v7, 0x6

    invoke-virtual {v5, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 86
    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    new-instance v8, Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lja/burhanrashid52/photoeditor/ImageFilterView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    .line 90
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setId(I)V

    .line 91
    iget-object v8, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {v8, v6}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setVisibility(I)V

    .line 94
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v3, v8

    .line 96
    .local v3, "imgFilterParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    invoke-virtual {v3, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    invoke-virtual {v3, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    new-instance v2, Lja/burhanrashid52/photoeditor/PhotoEditorView$1;

    invoke-direct {v2, p0}, Lja/burhanrashid52/photoeditor/PhotoEditorView$1;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditorView;)V

    invoke-virtual {v1, v2}, Lja/burhanrashid52/photoeditor/FilterImageView;->setOnImageChangedListener(Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;)V

    .line 111
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {p0, v1, v0}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {p0, v1, v3}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mBrushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    invoke-virtual {p0, v1, v5}, Lja/burhanrashid52/photoeditor/PhotoEditorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method


# virtual methods
.method getBrushDrawingView()Lja/burhanrashid52/photoeditor/BrushDrawingView;
    .registers 2

    .line 132
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mBrushDrawingView:Lja/burhanrashid52/photoeditor/BrushDrawingView;

    return-object v0
.end method

.method public getSource()Landroid/widget/ImageView;
    .registers 2

    .line 128
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    return-object v0
.end method

.method saveFilter(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
    .registers 4
    .param p1, "onSaveBitmap"    # Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    .line 137
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 138
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    new-instance v1, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;

    invoke-direct {v1, p0, p1}, Lja/burhanrashid52/photoeditor/PhotoEditorView$2;-><init>(Lja/burhanrashid52/photoeditor/PhotoEditorView;Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->saveBitmap(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V

    goto :goto_1c

    .line 153
    :cond_13
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lja/burhanrashid52/photoeditor/OnSaveBitmap;->onBitmapReady(Landroid/graphics/Bitmap;)V

    .line 157
    :goto_1c
    return-void
.end method

.method setFilterEffect(Lja/burhanrashid52/photoeditor/CustomEffect;)V
    .registers 4
    .param p1, "customEffect"    # Lja/burhanrashid52/photoeditor/CustomEffect;

    .line 166
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setSourceBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setFilterEffect(Lja/burhanrashid52/photoeditor/CustomEffect;)V

    .line 169
    return-void
.end method

.method setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V
    .registers 4
    .param p1, "filterType"    # Lja/burhanrashid52/photoeditor/PhotoFilter;

    .line 160
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImgSource:Lja/burhanrashid52/photoeditor/FilterImageView;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setSourceBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/PhotoEditorView;->mImageFilterView:Lja/burhanrashid52/photoeditor/ImageFilterView;

    invoke-virtual {v0, p1}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 163
    return-void
.end method
