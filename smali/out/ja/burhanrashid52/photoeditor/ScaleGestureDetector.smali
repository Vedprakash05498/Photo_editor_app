.class Lja/burhanrashid52/photoeditor/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mCurrSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J


# direct methods
.method constructor <init>(Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 3
    .param p1, "listener"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    .line 149
    new-instance v0, Lja/burhanrashid52/photoeditor/Vector2D;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/Vector2D;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    .line 150
    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "otherActiveId"    # I
    .param p3, "removedPointerIndex"    # I

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 316
    .local v0, "pointerCount":I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 319
    .local v1, "otherActiveIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_13

    .line 320
    if-eq v2, p3, :cond_10

    if-eq v2, v1, :cond_10

    .line 321
    return v2

    .line 319
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 324
    .end local v2    # "i":I
    :cond_13
    const/4 v2, -0x1

    return v2
.end method

.method private getCurrentSpan()F
    .registers 5

    .line 442
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 443
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 444
    .local v0, "cvx":F
    iget v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 445
    .local v1, "cvy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrLen:F

    .line 447
    .end local v0    # "cvx":F
    .end local v1    # "cvy":F
    :cond_19
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrLen:F

    return v0
.end method

.method private getPreviousSpan()F
    .registers 5

    .line 481
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 482
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 483
    .local v0, "pvx":F
    iget v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 484
    .local v1, "pvy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevLen:F

    .line 486
    .end local v0    # "pvx":F
    .end local v1    # "pvy":F
    :cond_19
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevLen:F

    return v0
.end method

.method private reset()V
    .registers 3

    .line 383
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 384
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 387
    :cond_a
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_13

    .line 388
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 389
    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 391
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    .line 392
    const/4 v1, -0x1

    iput v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 393
    iput v1, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 394
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mInvalidGesture:Z

    .line 395
    return-void
.end method

.method private setContext(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "curr"    # Landroid/view/MotionEvent;

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_b

    .line 329
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 331
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 333
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrLen:F

    .line 334
    iput v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevLen:F

    .line 335
    iput v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mScaleFactor:F

    .line 336
    iget-object v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lja/burhanrashid52/photoeditor/Vector2D;->set(FF)V

    .line 338
    iget-object v2, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 340
    .local v2, "prev":Landroid/view/MotionEvent;
    iget v3, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 341
    .local v3, "prevIndex0":I
    iget v4, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 342
    .local v4, "prevIndex1":I
    iget v5, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 343
    .local v5, "currIndex0":I
    iget v6, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 345
    .local v6, "currIndex1":I
    if-ltz v3, :cond_b4

    if-ltz v4, :cond_b4

    if-ltz v5, :cond_b4

    if-gez v6, :cond_42

    goto :goto_b4

    .line 354
    :cond_42
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 355
    .local v7, "px0":F
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 356
    .local v8, "py0":F
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 357
    .local v9, "px1":F
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 358
    .local v10, "py1":F
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 359
    .local v11, "cx0":F
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 360
    .local v12, "cy0":F
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 361
    .local v13, "cx1":F
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 363
    .local v14, "cy1":F
    sub-float v15, v9, v7

    .line 364
    .local v15, "pvx":F
    move/from16 v16, v7

    .end local v7    # "px0":F
    .local v16, "px0":F
    sub-float v7, v10, v8

    .line 365
    .local v7, "pvy":F
    move/from16 v17, v8

    .end local v8    # "py0":F
    .local v17, "py0":F
    sub-float v8, v13, v11

    .line 366
    .local v8, "cvx":F
    move/from16 v18, v9

    .end local v9    # "px1":F
    .local v18, "px1":F
    sub-float v9, v14, v12

    .line 368
    .local v9, "cvy":F
    move/from16 v19, v10

    .end local v10    # "py1":F
    .local v19, "py1":F
    iget-object v10, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    invoke-virtual {v10, v8, v9}, Lja/burhanrashid52/photoeditor/Vector2D;->set(FF)V

    .line 370
    iput v15, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 371
    iput v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 372
    iput v8, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 373
    iput v9, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 375
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v20, v8, v10

    add-float v10, v11, v20

    iput v10, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusX:F

    .line 376
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v10, v10, v9

    add-float/2addr v10, v12

    iput v10, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusY:F

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move v10, v7

    move/from16 v24, v8

    .end local v7    # "pvy":F
    .end local v8    # "cvx":F
    .local v10, "pvy":F
    .local v24, "cvx":F
    sub-long v7, v20, v22

    iput-wide v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mTimeDelta:J

    .line 378
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrPressure:F

    .line 379
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevPressure:F

    .line 380
    return-void

    .line 346
    .end local v9    # "cvy":F
    .end local v10    # "pvy":F
    .end local v11    # "cx0":F
    .end local v12    # "cy0":F
    .end local v13    # "cx1":F
    .end local v14    # "cy1":F
    .end local v15    # "pvx":F
    .end local v16    # "px0":F
    .end local v17    # "py0":F
    .end local v18    # "px1":F
    .end local v19    # "py1":F
    .end local v24    # "cvx":F
    :cond_b4
    :goto_b4
    const/4 v7, 0x1

    iput-boolean v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mInvalidGesture:Z

    .line 347
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    const-string v8, "ScaleGestureDetector"

    const-string v9, "Invalid MotionEvent stream detected."

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    iget-boolean v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v7, :cond_cf

    .line 349
    iget-object v7, v0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    goto :goto_d1

    .line 348
    :cond_cf
    move-object/from16 v8, p1

    .line 351
    :goto_d1
    return-void
.end method


# virtual methods
.method getCurrentSpanVector()Lja/burhanrashid52/photoeditor/Vector2D;
    .registers 2

    .line 451
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrSpanVector:Lja/burhanrashid52/photoeditor/Vector2D;

    return-object v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    .line 461
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .line 471
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .line 539
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getFocusX()F
    .registers 2

    .line 417
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method getFocusY()F
    .registers 2

    .line 432
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    .line 496
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .line 506
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 3

    .line 517
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 518
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mScaleFactor:F

    .line 520
    :cond_13
    iget v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .registers 3

    .line 530
    iget-wide v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method isInProgress()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 155
    .local v0, "action":I
    if-nez v0, :cond_9

    .line 156
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 159
    :cond_9
    const/4 v1, 0x1

    .line 160
    .local v1, "handled":Z
    iget-boolean v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mInvalidGesture:Z

    if-eqz v2, :cond_11

    .line 161
    const/4 v1, 0x0

    goto/16 :goto_199

    .line 162
    :cond_11
    iget-boolean v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_6e

    .line 163
    if-eqz v0, :cond_63

    if-eq v0, v6, :cond_5f

    if-eq v0, v4, :cond_20

    goto :goto_6c

    .line 176
    :cond_20
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    :cond_27
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 178
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mTimeDelta:J

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 181
    .local v2, "index1":I
    iget v4, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 182
    .local v4, "index0":I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 183
    if-ltz v4, :cond_45

    if-ne v4, v2, :cond_51

    .line 185
    :cond_45
    iget v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p2, v6, v3}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v4

    .line 186
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 188
    :cond_51
    iput-boolean v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 190
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 192
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    .line 193
    goto :goto_6c

    .line 171
    .end local v2    # "index1":I
    .end local v4    # "index0":I
    :cond_5f
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 172
    goto :goto_6c

    .line 165
    :cond_63
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 166
    iput-boolean v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 168
    nop

    .line 193
    :goto_6c
    goto/16 :goto_199

    .line 198
    :cond_6e
    if-eq v0, v6, :cond_195

    const/4 v2, 0x2

    if-eq v0, v2, :cond_172

    const/4 v7, 0x3

    if-eq v0, v7, :cond_169

    if-eq v0, v4, :cond_11c

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7d

    goto/16 :goto_199

    .line 225
    :cond_7d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 226
    .local v3, "pointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 227
    .local v4, "actionIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 229
    .local v7, "actionId":I
    const/4 v8, 0x0

    .line 230
    .local v8, "gestureEnded":Z
    if-le v3, v2, :cond_f2

    .line 231
    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    if-ne v7, v2, :cond_b9

    .line 232
    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p2, v2, v4}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v2

    .line 233
    .local v2, "newIndex":I
    if-ltz v2, :cond_b7

    .line 234
    iget-object v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    .line 235
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 236
    iput-boolean v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 237
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 238
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 239
    iget-object v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z

    move-result v5

    iput-boolean v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_b8

    .line 241
    :cond_b7
    const/4 v8, 0x1

    .line 243
    .end local v2    # "newIndex":I
    :cond_b8
    :goto_b8
    goto :goto_e3

    :cond_b9
    iget v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    if-ne v7, v9, :cond_b8

    .line 244
    invoke-direct {p0, p2, v2, v4}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v2

    .line 245
    .restart local v2    # "newIndex":I
    if-ltz v2, :cond_e2

    .line 246
    iget-object v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    .line 247
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 248
    iput-boolean v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 249
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 250
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 251
    iget-object v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z

    move-result v5

    iput-boolean v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_e3

    .line 253
    :cond_e2
    const/4 v8, 0x1

    .line 256
    .end local v2    # "newIndex":I
    :goto_e3
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 257
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 258
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_f3

    .line 260
    :cond_f2
    const/4 v8, 0x1

    .line 263
    :goto_f3
    if-eqz v8, :cond_11a

    .line 265
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 268
    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    if-ne v7, v2, :cond_fe

    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 269
    .local v2, "activeId":I
    :cond_fe
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 270
    .local v5, "index":I
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusX:F

    .line 271
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mFocusY:F

    .line 273
    iget-object v9, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    .line 274
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 275
    iput v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 276
    iput-boolean v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 279
    .end local v2    # "activeId":I
    .end local v3    # "pointerCount":I
    .end local v4    # "actionIndex":I
    .end local v5    # "index":I
    .end local v7    # "actionId":I
    .end local v8    # "gestureEnded":Z
    :cond_11a
    goto/16 :goto_199

    .line 201
    :cond_11c
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    .line 202
    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 203
    .local v2, "oldActive0":I
    iget v4, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 204
    .local v4, "oldActive1":I
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 206
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 207
    iget-boolean v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    if-eqz v6, :cond_134

    move v6, v2

    goto :goto_135

    :cond_134
    move v6, v4

    :goto_135
    iput v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    .line 209
    iput-boolean v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 211
    iget v5, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 212
    .local v5, "index0":I
    if-ltz v5, :cond_151

    iget v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    iget v7, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    if-ne v6, v7, :cond_15d

    .line 214
    :cond_151
    iget v6, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p2, v6, v3}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v5

    .line 215
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mActiveId0:I

    .line 218
    :cond_15d
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 220
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mGestureInProgress:Z

    .line 222
    .end local v2    # "oldActive0":I
    .end local v4    # "oldActive1":I
    .end local v5    # "index0":I
    goto :goto_199

    .line 282
    :cond_169
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V

    .line 283
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 284
    goto :goto_199

    .line 291
    :cond_172
    invoke-direct {p0, p1, p2}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->setContext(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 296
    iget v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mCurrPressure:F

    iget v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevPressure:F

    div-float/2addr v2, v3

    const v3, 0x3f2b851f    # 0.67f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_199

    .line 297
    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mListener:Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, p1, p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z

    move-result v2

    .line 299
    .local v2, "updatePrevious":Z
    if-eqz v2, :cond_199

    .line 300
    iget-object v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 301
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_199

    .line 287
    .end local v2    # "updatePrevious":Z
    :cond_195
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ScaleGestureDetector;->reset()V

    .line 288
    nop

    .line 309
    :cond_199
    :goto_199
    return v1
.end method
