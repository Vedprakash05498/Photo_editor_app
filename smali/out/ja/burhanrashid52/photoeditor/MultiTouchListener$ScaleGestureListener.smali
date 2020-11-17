.class Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;
.super Lja/burhanrashid52/photoeditor/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MultiTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/MultiTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field private mPivotX:F

.field private mPivotY:F

.field private mPrevSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

.field final synthetic this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;


# direct methods
.method private constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 203
    new-instance p1, Lja/burhanrashid52/photoeditor/Vector2D;

    invoke-direct {p1}, Lja/burhanrashid52/photoeditor/Vector2D;-><init>()V

    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPrevSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$1;

    .line 199
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "detector"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 215
    new-instance v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V

    .line 216
    .local v0, "info":Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$400(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    goto :goto_17

    :cond_15
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_17
    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaScale:F

    .line 217
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$500(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPrevSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getCurrentSpanVector()Lja/burhanrashid52/photoeditor/Vector2D;

    move-result-object v3

    invoke-static {v1, v3}, Lja/burhanrashid52/photoeditor/Vector2D;->getAngle(Lja/burhanrashid52/photoeditor/Vector2D;Lja/burhanrashid52/photoeditor/Vector2D;)F

    move-result v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaAngle:F

    .line 218
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$600(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iget v3, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotX:F

    sub-float/2addr v1, v3

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaX:F

    .line 219
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$600(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget v2, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotY:F

    sub-float v2, v1, v2

    :cond_53
    iput v2, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->deltaY:F

    .line 220
    iget v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotX:F

    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->pivotX:F

    .line 221
    iget v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotY:F

    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->pivotY:F

    .line 222
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$700(Lja/burhanrashid52/photoeditor/MultiTouchListener;)F

    move-result v1

    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->minimumScale:F

    .line 223
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$800(Lja/burhanrashid52/photoeditor/MultiTouchListener;)F

    move-result v1

    iput v1, v0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->maximumScale:F

    .line 224
    invoke-static {p1, v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$900(Landroid/view/View;Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;)V

    .line 225
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v1}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$200(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "detector"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 207
    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotX:F

    .line 208
    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPivotY:F

    .line 209
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->mPrevSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    invoke-virtual {p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getCurrentSpanVector()Lja/burhanrashid52/photoeditor/Vector2D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/Vector2D;->set(Landroid/graphics/PointF;)V

    .line 210
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$ScaleGestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$200(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Z

    move-result v0

    return v0
.end method
