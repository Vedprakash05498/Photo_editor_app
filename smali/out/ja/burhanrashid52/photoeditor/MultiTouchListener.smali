.class Lja/burhanrashid52/photoeditor/MultiTouchListener;
.super Ljava/lang/Object;
.source "MultiTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;,
        Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;,
        Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;,
        Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;,
        Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private deleteView:Landroid/view/View;

.field private isRotateEnabled:Z

.field private isScaleEnabled:Z

.field private isTranslateEnabled:Z

.field private location:[I

.field private mActivePointerId:I

.field private final mGestureListener:Landroid/view/GestureDetector;

.field private mIsTextPinchZoomable:Z

.field private mOnGestureControl:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

.field private mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

.field private mPrevRawX:F

.field private mPrevRawY:F

.field private mPrevX:F

.field private mPrevY:F

.field private mScaleGestureDetector:Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

.field private maximumScale:F

.field private minimumScale:F

.field private onMultiTouchListener:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;

.field private outRect:Landroid/graphics/Rect;

.field private parentView:Landroid/widget/RelativeLayout;

.field private photoEditImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;ZLja/burhanrashid52/photoeditor/OnPhotoEditorListener;)V
    .registers 11
    .param p1, "deleteView"    # Landroid/view/View;
    .param p2, "parentView"    # Landroid/widget/RelativeLayout;
    .param p3, "photoEditImageView"    # Landroid/widget/ImageView;
    .param p4, "isTextPinchZoomable"    # Z
    .param p5, "onPhotoEditorListener"    # Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isRotateEnabled:Z

    .line 23
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isTranslateEnabled:Z

    .line 24
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isScaleEnabled:Z

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->minimumScale:F

    .line 26
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->maximumScale:F

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->location:[I

    .line 45
    iput-boolean p4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mIsTextPinchZoomable:Z

    .line 46
    new-instance v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    new-instance v1, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V

    invoke-direct {v0, v1}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;-><init>(Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mScaleGestureDetector:Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;

    invoke-direct {v1, p0, v2}, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mGestureListener:Landroid/view/GestureDetector;

    .line 48
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->deleteView:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->parentView:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p3, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->photoEditImageView:Landroid/widget/ImageView;

    .line 51
    iput-object p5, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    .line 52
    if-eqz p1, :cond_57

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->outRect:Landroid/graphics/Rect;

    goto :goto_5f

    .line 56
    :cond_57
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->outRect:Landroid/graphics/Rect;

    .line 58
    :goto_5f
    return-void
.end method

.method static synthetic access$1000(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mOnGestureControl:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    return-object v0
.end method

.method static synthetic access$200(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mIsTextPinchZoomable:Z

    return v0
.end method

.method static synthetic access$400(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isScaleEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isRotateEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isTranslateEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lja/burhanrashid52/photoeditor/MultiTouchListener;)F
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->minimumScale:F

    return v0
.end method

.method static synthetic access$800(Lja/burhanrashid52/photoeditor/MultiTouchListener;)F
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;

    .line 18
    iget v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->maximumScale:F

    return v0
.end method

.method static synthetic access$900(Landroid/view/View;Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;

    .line 18
    invoke-static {p0, p1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->move(Landroid/view/View;Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;)V

    return-void
.end method

.method private static adjustAngle(F)F
    .registers 3
    .param p0, "degrees"    # F

    .line 61
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_a

    .line 62
    sub-float/2addr p0, v0

    goto :goto_11

    .line 63
    :cond_a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_11

    .line 64
    add-float/2addr p0, v0

    .line 67
    :cond_11
    :goto_11
    return p0
.end method

.method private static adjustTranslation(Landroid/view/View;FF)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 85
    .local v0, "deltaVector":[F
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aget v1, v0, v1

    add-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    aget v2, v0, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    return-void
.end method

.method private static computeRenderOffset(Landroid/view/View;FF)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_11

    .line 92
    return-void

    .line 95
    :cond_11
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_4e

    .line 96
    .local v1, "prevPoint":[F
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 99
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 101
    new-array v0, v0, [F

    fill-array-data v0, :array_56

    .line 102
    .local v0, "currPoint":[F
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 104
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-float/2addr v3, v2

    .line 105
    .local v3, "offsetX":F
    const/4 v2, 0x1

    aget v4, v0, v2

    aget v2, v1, v2

    sub-float/2addr v4, v2

    .line 107
    .local v4, "offsetY":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private firePhotoEditorSDKListener(Landroid/view/View;Z)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isStart"    # Z

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "viewTag":Ljava/lang/Object;
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mOnPhotoEditorListener:Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    instance-of v2, v0, Lja/burhanrashid52/photoeditor/ViewType;

    if-eqz v2, :cond_23

    .line 181
    if-eqz p2, :cond_1a

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lja/burhanrashid52/photoeditor/ViewType;

    invoke-interface {v1, v2}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onStartViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V

    goto :goto_23

    .line 184
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lja/burhanrashid52/photoeditor/ViewType;

    invoke-interface {v1, v2}, Lja/burhanrashid52/photoeditor/OnPhotoEditorListener;->onStopViewChangeListener(Lja/burhanrashid52/photoeditor/ViewType;)V

    .line 186
    :cond_23
    :goto_23
    return-void
.end method

.method private isViewInBounds(Landroid/view/View;II)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 189
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->outRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 190
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->location:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->outRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->location:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->outRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private static move(Landroid/view/View;Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;

    .line 71
    iget v0, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->pivotX:F

    iget v1, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->pivotY:F

    invoke-static {p0, v0, v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->computeRenderOffset(Landroid/view/View;FF)V

    .line 72
    iget v0, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaX:F

    iget v1, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaY:F

    invoke-static {p0, v0, v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->adjustTranslation(Landroid/view/View;FF)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaScale:F

    mul-float v0, v0, v1

    .line 75
    .local v0, "scale":F
    iget v1, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->minimumScale:F

    iget v2, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->maximumScale:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v2, p1, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaAngle:F

    add-float/2addr v1, v2

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->adjustAngle(F)F

    move-result v1

    .line 80
    .local v1, "rotation":F
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 81
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 113
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mScaleGestureDetector:Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    invoke-virtual {v0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 114
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isTranslateEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 117
    return v1

    .line 120
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 123
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 125
    .local v3, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    and-int/2addr v4, v0

    const/4 v5, 0x0

    if-eqz v4, :cond_b5

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-eq v4, v1, :cond_82

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5e

    const/4 v8, 0x3

    if-eq v4, v8, :cond_5a

    const/4 v7, 0x6

    if-eq v4, v7, :cond_36

    goto/16 :goto_e1

    .line 165
    :cond_36
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/2addr v4, v6

    .line 166
    .local v4, "pointerIndexPointerUp":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 167
    .local v6, "pointerId":I
    iget v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    if-ne v6, v7, :cond_e1

    .line 168
    if-nez v4, :cond_46

    const/4 v5, 0x1

    .line 169
    .local v5, "newPointerIndex":I
    :cond_46
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevX:F

    .line 170
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevY:F

    .line 171
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    goto/16 :goto_e1

    .line 149
    .end local v4    # "pointerIndexPointerUp":I
    .end local v5    # "newPointerIndex":I
    .end local v6    # "pointerId":I
    :cond_5a
    iput v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    .line 150
    goto/16 :goto_e1

    .line 139
    :cond_5e
    iget v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 140
    .local v4, "pointerIndexMove":I
    if-eq v4, v7, :cond_e1

    .line 141
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 142
    .local v5, "currX":F
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 143
    .local v6, "currY":F
    iget-object v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mScaleGestureDetector:Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    invoke-virtual {v7}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_81

    .line 144
    iget v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevX:F

    sub-float v7, v5, v7

    iget v8, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevY:F

    sub-float v8, v6, v8

    invoke-static {p1, v7, v8}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->adjustTranslation(Landroid/view/View;FF)V

    .line 146
    .end local v5    # "currX":F
    .end local v6    # "currY":F
    :cond_81
    goto :goto_e1

    .line 152
    .end local v4    # "pointerIndexMove":I
    :cond_82
    iput v7, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    .line 153
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->deleteView:Landroid/view/View;

    if-eqz v4, :cond_96

    invoke-direct {p0, v4, v2, v3}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isViewInBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 154
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->onMultiTouchListener:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;

    if-eqz v4, :cond_aa

    .line 155
    invoke-interface {v4, p1}, Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;->onRemoveViewListener(Landroid/view/View;)V

    goto :goto_aa

    .line 156
    :cond_96
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->photoEditImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v2, v3}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->isViewInBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 159
    :cond_aa
    :goto_aa
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->deleteView:Landroid/view/View;

    if-eqz v4, :cond_b1

    .line 160
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_b1
    invoke-direct {p0, p1, v5}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->firePhotoEditorSDKListener(Landroid/view/View;Z)V

    .line 163
    goto :goto_e1

    .line 127
    :cond_b5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevX:F

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevY:F

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevRawX:F

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mPrevRawY:F

    .line 131
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mActivePointerId:I

    .line 132
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->deleteView:Landroid/view/View;

    if-eqz v4, :cond_da

    .line 133
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_da
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 136
    invoke-direct {p0, p1, v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->firePhotoEditorSDKListener(Landroid/view/View;Z)V

    .line 137
    nop

    .line 175
    :cond_e1
    :goto_e1
    return v1
.end method

.method setOnGestureControl(Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;)V
    .registers 2
    .param p1, "onGestureControl"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    .line 253
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->mOnGestureControl:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    .line 254
    return-void
.end method

.method setOnMultiTouchListener(Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;)V
    .registers 2
    .param p1, "onMultiTouchListener"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;

    .line 196
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener;->onMultiTouchListener:Lja/burhanrashid52/photoeditor/MultiTouchListener$OnMultiTouchListener;

    .line 197
    return-void
.end method
