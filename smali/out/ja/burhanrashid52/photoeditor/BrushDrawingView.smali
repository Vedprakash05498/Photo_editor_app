.class public Lja/burhanrashid52/photoeditor/BrushDrawingView;
.super Landroid/view/View;
.source "BrushDrawingView.java"


# static fields
.field static final DEFAULT_BRUSH_SIZE:F = 25.0f

.field static final DEFAULT_ERASER_SIZE:F = 50.0f

.field static final DEFAULT_OPACITY:I = 0xff

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBrushDrawMode:Z

.field private mBrushEraserSize:F

.field private mBrushSize:F

.field private mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

.field private mDrawCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mDrawnPaths:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lja/burhanrashid52/photoeditor/LinePath;",
            ">;"
        }
    .end annotation
.end field

.field private mOpacity:I

.field private mPath:Landroid/graphics/Path;

.field private final mRedoPaths:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lja/burhanrashid52/photoeditor/LinePath;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushSize:F

    .line 39
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushEraserSize:F

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mOpacity:I

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    .line 65
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setupBrushDrawing()V

    .line 66
    return-void
.end method

.method private refreshBrushDrawing()V
    .registers 2

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushDrawMode:Z

    .line 90
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setupPathAndPaint()V

    .line 91
    return-void
.end method

.method private setupBrushDrawing()V
    .registers 3

    .line 70
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setupPathAndPaint()V

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method private setupPathAndPaint()V
    .registers 4

    .line 77
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    .line 78
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 80
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 82
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 86
    return-void
.end method

.method private touchMove(FF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 246
    iget v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 247
    .local v0, "dx":F
    iget v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 248
    .local v1, "dy":F
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v3, v0, v2

    if-gez v3, :cond_1a

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2f

    .line 249
    :cond_1a
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchX:F

    iget v4, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchY:F

    add-float v5, p1, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v7, p2, v4

    div-float/2addr v7, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 250
    iput p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchX:F

    .line 251
    iput p2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchY:F

    .line 253
    :cond_2f
    return-void
.end method

.method private touchStart(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 235
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 236
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 237
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 238
    iput p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchX:F

    .line 239
    iput p2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchY:F

    .line 240
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    if-eqz v0, :cond_1a

    .line 241
    invoke-interface {v0}, Lja/burhanrashid52/photoeditor/BrushViewChangeListener;->onStartDrawing()V

    .line 243
    :cond_1a
    return-void
.end method

.method private touchUp()V
    .registers 5

    .line 256
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchX:F

    iget v2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mTouchY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    new-instance v1, Lja/burhanrashid52/photoeditor/LinePath;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2, v3}, Lja/burhanrashid52/photoeditor/LinePath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    .line 262
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    if-eqz v0, :cond_33

    .line 263
    invoke-interface {v0}, Lja/burhanrashid52/photoeditor/BrushViewChangeListener;->onStopDrawing()V

    .line 264
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    invoke-interface {v0, p0}, Lja/burhanrashid52/photoeditor/BrushViewChangeListener;->onViewAdd(Lja/burhanrashid52/photoeditor/BrushDrawingView;)V

    .line 266
    :cond_33
    return-void
.end method


# virtual methods
.method brushEraser()V
    .registers 4

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushDrawMode:Z

    .line 95
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushEraserSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    return-void
.end method

.method clearAll()V
    .registers 4

    .line 153
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 154
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 155
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_14

    .line 156
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 158
    :cond_14
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->invalidate()V

    .line 159
    return-void
.end method

.method getBrushColor()I
    .registers 2

    .line 149
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method getBrushDrawingMode()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushDrawMode:Z

    return v0
.end method

.method getBrushSize()F
    .registers 2

    .line 145
    iget v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushSize:F

    return v0
.end method

.method getDrawingPaint()Landroid/graphics/Paint;
    .registers 2

    .line 270
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method getDrawingPath()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/Stack<",
            "Lja/burhanrashid52/photoeditor/LinePath;",
            ">;",
            "Ljava/util/Stack<",
            "Lja/burhanrashid52/photoeditor/LinePath;",
            ">;>;"
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method getEraserSize()F
    .registers 2

    .line 141
    iget v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushEraserSize:F

    return v0
.end method

.method getOpacity()I
    .registers 2

    .line 113
    iget v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mOpacity:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 174
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lja/burhanrashid52/photoeditor/LinePath;

    .line 175
    .local v1, "linePath":Lja/burhanrashid52/photoeditor/LinePath;
    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/LinePath;->getDrawPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/LinePath;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    .end local v1    # "linePath":Lja/burhanrashid52/photoeditor/LinePath;
    goto :goto_6

    .line 177
    :cond_1e
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 168
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 189
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushDrawMode:Z

    if-eqz v0, :cond_29

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 191
    .local v0, "touchX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 192
    .local v1, "touchY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    if-eq v2, v3, :cond_1d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    goto :goto_25

    .line 197
    :cond_19
    invoke-direct {p0, v0, v1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->touchMove(FF)V

    .line 198
    goto :goto_25

    .line 200
    :cond_1d
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->touchUp()V

    goto :goto_25

    .line 194
    :cond_21
    invoke-direct {p0, v0, v1}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->touchStart(FF)V

    .line 195
    nop

    .line 203
    :goto_25
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->invalidate()V

    .line 204
    return v3

    .line 206
    .end local v0    # "touchX":F
    .end local v1    # "touchY":F
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method redo()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 223
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->invalidate()V

    .line 227
    :cond_16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    if-eqz v0, :cond_1d

    .line 228
    invoke-interface {v0, p0}, Lja/burhanrashid52/photoeditor/BrushViewChangeListener;->onViewAdd(Lja/burhanrashid52/photoeditor/BrushDrawingView;)V

    .line 230
    :cond_1d
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method setBrushColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 126
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 128
    return-void
.end method

.method setBrushDrawingMode(Z)V
    .registers 3
    .param p1, "brushDrawMode"    # Z

    .line 100
    iput-boolean p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushDrawMode:Z

    .line 101
    if-eqz p1, :cond_b

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->refreshBrushDrawing()V

    .line 105
    :cond_b
    return-void
.end method

.method setBrushEraserColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 136
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 138
    return-void
.end method

.method setBrushEraserSize(F)V
    .registers 3
    .param p1, "brushEraserSize"    # F

    .line 131
    iput p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushEraserSize:F

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 133
    return-void
.end method

.method setBrushSize(F)V
    .registers 3
    .param p1, "size"    # F

    .line 121
    iput p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushSize:F

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 123
    return-void
.end method

.method setBrushViewChangeListener(Lja/burhanrashid52/photoeditor/BrushViewChangeListener;)V
    .registers 2
    .param p1, "brushViewChangeListener"    # Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    .line 162
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    .line 163
    return-void
.end method

.method setOpacity(I)V
    .registers 3
    .param p1, "opacity"    # I

    .line 108
    iput p1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mOpacity:I

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->setBrushDrawingMode(Z)V

    .line 110
    return-void
.end method

.method undo()Z
    .registers 3

    .line 211
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 212
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mRedoPaths:Ljava/util/Stack;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/BrushDrawingView;->invalidate()V

    .line 215
    :cond_16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mBrushViewChangeListener:Lja/burhanrashid52/photoeditor/BrushViewChangeListener;

    if-eqz v0, :cond_1d

    .line 216
    invoke-interface {v0, p0}, Lja/burhanrashid52/photoeditor/BrushViewChangeListener;->onViewRemoved(Lja/burhanrashid52/photoeditor/BrushDrawingView;)V

    .line 218
    :cond_1d
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/BrushDrawingView;->mDrawnPaths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
