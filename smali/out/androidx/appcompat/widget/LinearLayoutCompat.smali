.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 122
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 162
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 164
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 166
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 164
    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 168
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 169
    .local v4, "index":I
    if-ltz v4, :cond_30

    .line 170
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 173
    :cond_30
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 174
    if-ltz v4, :cond_3b

    .line 175
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 178
    :cond_3b
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 179
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_46

    .line 180
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 183
    :cond_46
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 185
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 186
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 188
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 190
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 192
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 194
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 195
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1327
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1329
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 1330
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1331
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 1332
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1334
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 1337
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1338
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1341
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1342
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1329
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1346
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 905
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 907
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 908
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 909
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 910
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 912
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 915
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 916
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 919
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 920
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 907
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 924
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1655
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1656
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1761
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 333
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 334
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 335
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 338
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 341
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_2f

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 344
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 346
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 334
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 351
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 352
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 354
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_61

    .line 355
    if-eqz v1, :cond_54

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7d

    .line 358
    .end local v3    # "position":I
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7d

    .line 361
    .end local v3    # "position":I
    :cond_61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 362
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_75

    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7d

    .line 365
    .end local v4    # "position":I
    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 368
    .local v3, "position":I
    :goto_7d
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 370
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_80
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 305
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 306
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 307
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 309
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 310
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 312
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 313
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 306
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 318
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 319
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 320
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 321
    .local v2, "bottom":I
    if-nez v1, :cond_4d

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5c

    .line 324
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 325
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 327
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5c
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 329
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5f
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 373
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 379
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1744
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1745
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1746
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1747
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1749
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1731
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1754
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    .line 433
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 437
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_78

    .line 442
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 445
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 446
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    .line 448
    return v2

    .line 452
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 464
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6d

    .line 465
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 466
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_6d

    .line 467
    const/16 v4, 0x10

    if-eq v3, v4, :cond_54

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6d

    .line 469
    :cond_41
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 470
    goto :goto_6d

    .line 473
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 480
    .end local v3    # "majorGravity":I
    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 481
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 438
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 490
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 278
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1710
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1411
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1677
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 222
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 515
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 539
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 577
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 578
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 579
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 580
    :cond_19
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_36

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_35

    .line 583
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_32

    .line 584
    const/4 v0, 0x1

    .line 585
    goto :goto_35

    .line 582
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 588
    .end local v1    # "i":I
    :cond_35
    :goto_35
    return v0

    .line 590
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_36
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 38
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1531
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 1532
    .local v7, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 1538
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1539
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v10, v9, v0

    .line 1542
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 1544
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1546
    .local v12, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1547
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1549
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1551
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1552
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1554
    .local v4, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1555
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .local v0, "childLeft":I
    goto :goto_5b

    .line 1558
    .end local v0    # "childLeft":I
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1559
    .restart local v0    # "childLeft":I
    goto :goto_5b

    .line 1563
    .end local v0    # "childLeft":I
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int v1, p3, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1564
    .restart local v0    # "childLeft":I
    nop

    .line 1572
    :goto_5b
    const/4 v1, 0x0

    .line 1573
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1575
    .local v2, "dir":I
    if-eqz v7, :cond_67

    .line 1576
    add-int/lit8 v1, v12, -0x1

    .line 1577
    const/4 v2, -0x1

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_6b

    .line 1575
    :cond_67
    move/from16 v18, v1

    move/from16 v19, v2

    .line 1580
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v18, "start":I
    .local v19, "dir":I
    :goto_6b
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_6d
    if-ge v2, v12, :cond_177

    .line 1581
    mul-int v1, v19, v2

    add-int v1, v18, v1

    .line 1582
    .local v1, "childIndex":I
    move/from16 v20, v7

    .end local v7    # "isLayoutRtl":Z
    .local v20, "isLayoutRtl":Z
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1584
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_91

    .line 1585
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    const/16 v21, 0x1

    goto/16 :goto_165

    .line 1586
    :cond_91
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_154

    .line 1587
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1588
    .local v23, "childWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1589
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1591
    .local v2, "childBaseline":I
    nop

    .line 1592
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1594
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_bd

    move/from16 v26, v9

    .end local v9    # "height":I
    .local v26, "height":I
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v9, v2, :cond_bf

    .line 1595
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    goto :goto_c1

    .line 1594
    .end local v26    # "height":I
    .local v9, "height":I
    .restart local v25    # "childBaseline":I
    :cond_bd
    move/from16 v26, v9

    .line 1598
    .end local v9    # "height":I
    .restart local v26    # "height":I
    :cond_bf
    move/from16 v9, v25

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    :goto_c1
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1599
    .local v2, "gravity":I
    if-gez v2, :cond_c9

    .line 1600
    move v2, v14

    move/from16 v27, v2

    goto :goto_cb

    .line 1599
    :cond_c9
    move/from16 v27, v2

    .line 1603
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_cb
    and-int/lit8 v2, v27, 0x70

    move/from16 v28, v12

    .end local v12    # "count":I
    .local v28, "count":I
    const/16 v12, 0x10

    if-eq v2, v12, :cond_107

    const/16 v12, 0x30

    if-eq v2, v12, :cond_f5

    const/16 v12, 0x50

    if-eq v2, v12, :cond_de

    .line 1635
    move v2, v8

    move v12, v2

    .local v2, "childTop":I
    goto :goto_114

    .line 1628
    .end local v2    # "childTop":I
    :cond_de
    sub-int v2, v10, v24

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1629
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_f3

    .line 1630
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v9

    .line 1631
    .local v12, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v12

    sub-int v2, v2, v25

    .line 1632
    .end local v12    # "descent":I
    move v12, v2

    goto :goto_114

    .line 1629
    :cond_f3
    move v12, v2

    goto :goto_114

    .line 1605
    .end local v2    # "childTop":I
    :cond_f5
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1606
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_104

    .line 1607
    const/4 v12, 0x1

    aget v17, v5, v12

    sub-int v17, v17, v9

    add-int v2, v2, v17

    move v12, v2

    goto :goto_114

    .line 1606
    :cond_104
    const/4 v12, 0x1

    move v12, v2

    goto :goto_114

    .line 1623
    .end local v2    # "childTop":I
    :cond_107
    const/4 v12, 0x1

    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v12

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1625
    .restart local v2    # "childTop":I
    move v12, v2

    .line 1639
    .end local v2    # "childTop":I
    .local v12, "childTop":I
    :goto_114
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 1640
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1643
    :cond_11d
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1644
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    .end local v1    # "childIndex":I
    .local v8, "childIndex":I
    .local v29, "paddingTop":I
    move-object v1, v7

    move/from16 v17, v21

    const/16 v21, 0x1

    .end local v21    # "i":I
    .local v17, "i":I
    move/from16 v30, v9

    move-object v9, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "childBaseline":I
    move v3, v12

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1646
    iget v0, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1647
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1649
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v17, v0

    move/from16 v0, v25

    .end local v17    # "i":I
    .local v2, "i":I
    goto :goto_165

    .line 1586
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "height":I
    .end local v27    # "gravity":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v30    # "childBaseline":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v8, "paddingTop":I
    .local v9, "height":I
    .local v12, "count":I
    .restart local v21    # "i":I
    :cond_154
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    move/from16 v17, v21

    const/16 v21, 0x1

    move v8, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v9    # "height":I
    .end local v12    # "count":I
    .end local v21    # "i":I
    .local v8, "childIndex":I
    .restart local v17    # "i":I
    .restart local v26    # "height":I
    .restart local v28    # "count":I
    .restart local v29    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v17

    .line 1580
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    .end local v17    # "i":I
    .restart local v2    # "i":I
    :goto_165
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v20

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v12, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_6d

    .line 1652
    .end local v2    # "i":I
    .end local v20    # "isLayoutRtl":Z
    .end local v22    # "layoutDirection":I
    .end local v26    # "height":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .restart local v9    # "height":I
    .restart local v12    # "count":I
    :cond_177
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1436
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1442
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1443
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 1446
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1448
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1450
    .local v11, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1451
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1453
    .local v13, "minorGravity":I
    const/16 v0, 0x10

    if-eq v12, v0, :cond_3c

    const/16 v0, 0x50

    if-eq v12, v0, :cond_30

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_49

    .line 1456
    .end local v0    # "childTop":I
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1457
    .restart local v0    # "childTop":I
    goto :goto_49

    .line 1461
    .end local v0    # "childTop":I
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1462
    .restart local v0    # "childTop":I
    nop

    .line 1470
    :goto_49
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_4b
    if-ge v14, v11, :cond_f0

    .line 1471
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1472
    .local v15, "child":Landroid/view/View;
    const/4 v5, 0x1

    if-nez v15, :cond_5f

    .line 1473
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v24, v7

    const/16 v19, 0x1

    goto/16 :goto_ea

    .line 1474
    :cond_5f
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_e6

    .line 1475
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1476
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1478
    .local v17, "childHeight":I
    nop

    .line 1479
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1481
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1482
    .local v1, "gravity":I
    if-gez v1, :cond_7e

    .line 1483
    move v1, v13

    move v3, v1

    goto :goto_7f

    .line 1482
    :cond_7e
    move v3, v1

    .line 1485
    .end local v1    # "gravity":I
    .local v3, "gravity":I
    :goto_7f
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1486
    .local v2, "layoutDirection":I
    invoke-static {v3, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1488
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    if-eq v1, v5, :cond_9c

    const/4 v5, 0x5

    if-eq v1, v5, :cond_94

    .line 1500
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v20, v1

    .local v1, "childLeft":I
    goto :goto_a9

    .line 1495
    .end local v1    # "childLeft":I
    :cond_94
    sub-int v1, v9, v16

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1496
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    goto :goto_a9

    .line 1490
    .end local v1    # "childLeft":I
    :cond_9c
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1492
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    .line 1504
    .end local v1    # "childLeft":I
    .local v20, "childLeft":I
    :goto_a9
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1505
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1508
    :cond_b2
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v0, v1

    .line 1509
    .end local v0    # "childTop":I
    .local v21, "childTop":I
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v21, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v22, v2

    .end local v2    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v2, v20

    move/from16 v23, v3

    .end local v3    # "gravity":I
    .local v23, "gravity":I
    move v3, v5

    move-object v5, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v16

    move/from16 v24, v7

    const/16 v19, 0x1

    move-object v7, v5

    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v24, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1511
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v21, v21, v0

    .line 1513
    invoke-virtual {v6, v15, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v21

    goto :goto_ea

    .line 1474
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v20    # "childLeft":I
    .end local v21    # "childTop":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "gravity":I
    .end local v24    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_e6
    move/from16 v24, v7

    const/16 v19, 0x1

    .line 1470
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v24    # "paddingLeft":I
    :goto_ea
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v24

    goto/16 :goto_4b

    .line 1516
    .end local v14    # "i":I
    .end local v24    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_f0
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1387
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1389
    return-void
.end method

.method measureHorizontal(II)V
    .registers 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 938
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 941
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 942
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 943
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 944
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 946
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 948
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 949
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 951
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 952
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 954
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 955
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 956
    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 959
    :cond_2e
    iget-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 960
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 962
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 963
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 965
    iget-boolean v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 966
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 968
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    const/16 v23, 0x1

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 970
    .local v23, "isExactly":Z
    :goto_5c
    const/16 v24, 0x0

    .line 973
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    move/from16 v9, v25

    move/from16 v45, v5

    move v5, v0

    move/from16 v0, v45

    move/from16 v46, v4

    move v4, v1

    move/from16 v1, v24

    move/from16 v24, v22

    move/from16 v22, v18

    move/from16 v18, v46

    move/from16 v47, v3

    move v3, v2

    move/from16 v2, v47

    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v9, "i":I
    .local v18, "allFillParent":Z
    .local v22, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_77
    const/16 v28, 0x0

    if-ge v9, v11, :cond_260

    .line 974
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 976
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_97

    .line 977
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .local v30, "largestChildWidth":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v26

    add-int v1, v1, v26

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 978
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v1, v30

    move/from16 v30, v12

    goto/16 :goto_254

    .line 981
    .end local v30    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_97
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .restart local v30    # "largestChildWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v31, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    if-ne v1, v2, :cond_b4

    .line 982
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    .line 983
    move/from16 v21, v6

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v31, v11

    move/from16 v30, v12

    goto/16 :goto_254

    .line 986
    :cond_b4
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 987
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 990
    :cond_c1
    nop

    .line 991
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 993
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v0, v1

    .line 995
    .end local v0    # "totalWeight":F
    .local v29, "totalWeight":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_12c

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_12c

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_12c

    .line 999
    if-eqz v23, :cond_ea

    .line 1000
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_fa

    .line 1002
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_ea
    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1003
    .local v0, "totalLength":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1012
    .end local v0    # "totalLength":I
    :goto_fa
    if-eqz v6, :cond_117

    .line 1013
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1014
    .local v1, "freeSpec":I
    invoke-virtual {v8, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1015
    .end local v1    # "freeSpec":I
    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b6

    .line 1016
    :cond_117
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b6

    .line 995
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_12c
    move/from16 v32, v3

    .line 1019
    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    const/high16 v0, -0x80000000

    .line 1021
    .local v0, "oldWidth":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_140

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_140

    .line 1026
    const/4 v0, 0x0

    .line 1027
    const/4 v1, -0x2

    iput v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v3, v0

    goto :goto_141

    .line 1034
    :cond_140
    move v3, v0

    .end local v0    # "oldWidth":I
    .local v3, "oldWidth":I
    :goto_141
    nop

    .line 1035
    cmpl-float v0, v29, v28

    if-nez v0, :cond_14b

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    goto :goto_14d

    :cond_14b
    const/16 v33, 0x0

    :goto_14d
    const/16 v34, 0x0

    .line 1034
    move-object/from16 v0, p0

    move/from16 v35, v30

    .end local v30    # "largestChildWidth":I
    .local v35, "largestChildWidth":I
    move-object v1, v8

    move-object/from16 v37, v2

    move/from16 v36, v31

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "weightedMaxHeight":I
    .local v36, "weightedMaxHeight":I
    .local v37, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v2, v9

    move/from16 v39, v3

    move/from16 v38, v32

    .end local v3    # "oldWidth":I
    .end local v32    # "alternativeMaxHeight":I
    .local v38, "alternativeMaxHeight":I
    .local v39, "oldWidth":I
    move/from16 v3, p1

    move/from16 v40, v4

    .end local v4    # "childState":I
    .local v40, "childState":I
    move/from16 v4, v33

    move/from16 v30, v12

    move v12, v5

    .end local v5    # "maxHeight":I
    .local v12, "maxHeight":I
    .local v30, "widthMode":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v31, v11

    const/4 v11, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v11    # "count":I
    .local v21, "baselineAligned":Z
    .local v31, "count":I
    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1038
    move/from16 v0, v39

    const/high16 v1, -0x80000000

    .end local v39    # "oldWidth":I
    .restart local v0    # "oldWidth":I
    if-eq v0, v1, :cond_17d

    .line 1039
    move-object/from16 v1, v37

    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_17f

    .line 1038
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_17d
    move-object/from16 v1, v37

    .line 1042
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_17f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1043
    .local v2, "childWidth":I
    if-eqz v23, :cond_196

    .line 1044
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1045
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1ab

    .line 1047
    :cond_196
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1048
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1049
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1048
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1052
    .end local v3    # "totalLength":I
    :goto_1ab
    if-eqz v14, :cond_1b4

    .line 1053
    move/from16 v3, v35

    .end local v35    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1b6

    .line 1052
    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    :cond_1b4
    move/from16 v3, v35

    .line 1057
    .end local v0    # "oldWidth":I
    .end local v2    # "childWidth":I
    .end local v35    # "largestChildWidth":I
    .restart local v3    # "largestChildWidth":I
    :goto_1b6
    const/4 v0, 0x0

    .line 1058
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1c2

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v11, :cond_1c2

    .line 1062
    const/16 v22, 0x1

    .line 1063
    const/4 v0, 0x1

    .line 1066
    :cond_1c2
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1067
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1068
    .local v4, "childHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v40

    .end local v40    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1070
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_20d

    .line 1071
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1072
    .local v6, "childBaseline":I
    if-eq v6, v11, :cond_208

    .line 1075
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v11, :cond_1e5

    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1e7

    :cond_1e5
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1e7
    and-int/lit8 v11, v11, 0x70

    .line 1077
    .local v11, "gravity":I
    shr-int/lit8 v26, v11, 0x4

    const/16 v27, -0x2

    and-int/lit8 v26, v26, -0x2

    shr-int/lit8 v26, v26, 0x1

    .line 1080
    .local v26, "index":I
    move/from16 v27, v2

    .end local v2    # "margin":I
    .local v27, "margin":I
    aget v2, v10, v26

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v26

    .line 1081
    aget v2, v15, v26

    move/from16 v33, v3

    .end local v3    # "largestChildWidth":I
    .local v33, "largestChildWidth":I
    sub-int v3, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v26

    goto :goto_211

    .line 1072
    .end local v11    # "gravity":I
    .end local v26    # "index":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_208
    move/from16 v27, v2

    move/from16 v33, v3

    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    goto :goto_211

    .line 1070
    .end local v6    # "childBaseline":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_20d
    move/from16 v27, v2

    move/from16 v33, v3

    .line 1085
    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    :goto_211
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1087
    .end local v12    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_21e

    iget v3, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_21e

    const/4 v3, 0x1

    goto :goto_21f

    :cond_21e
    const/4 v3, 0x0

    .line 1088
    .end local v18    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_21f
    iget v6, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_233

    .line 1093
    nop

    .line 1094
    if-eqz v0, :cond_22b

    move/from16 v6, v27

    goto :goto_22c

    :cond_22b
    move v6, v4

    .line 1093
    :goto_22c
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v11    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_244

    .line 1096
    .end local v6    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    :cond_233
    move/from16 v11, v36

    .line 1097
    .end local v36    # "weightedMaxHeight":I
    .restart local v11    # "weightedMaxHeight":I
    if-eqz v0, :cond_23a

    move/from16 v6, v27

    goto :goto_23b

    :cond_23a
    move v6, v4

    .line 1096
    :goto_23b
    move/from16 v12, v38

    .end local v38    # "alternativeMaxHeight":I
    .local v12, "alternativeMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v38, v6

    move v6, v11

    .line 1100
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "alternativeMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    .restart local v38    # "alternativeMaxHeight":I
    :goto_244
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v3

    move v4, v5

    move/from16 v0, v29

    move/from16 v1, v33

    move/from16 v3, v38

    move v5, v2

    move v2, v6

    .line 973
    .end local v6    # "weightedMaxHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v27    # "margin":I
    .end local v29    # "totalWeight":F
    .end local v33    # "largestChildWidth":I
    .end local v38    # "alternativeMaxHeight":I
    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .restart local v18    # "allFillParent":Z
    :goto_254
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v30

    move/from16 v11, v31

    goto/16 :goto_77

    .end local v21    # "baselineAligned":Z
    .end local v30    # "widthMode":I
    .end local v31    # "count":I
    .local v6, "baselineAligned":Z
    .local v11, "count":I
    .local v12, "widthMode":I
    :cond_260
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v30, v12

    move v11, v2

    move v2, v3

    move v6, v4

    move v12, v5

    move v3, v1

    .line 1103
    .end local v1    # "largestChildWidth":I
    .end local v4    # "childState":I
    .end local v5    # "maxHeight":I
    .end local v9    # "i":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "largestChildWidth":I
    .local v6, "childState":I
    .local v11, "weightedMaxHeight":I
    .local v12, "maxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "count":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_27f

    move/from16 v1, v31

    .end local v31    # "count":I
    .local v1, "count":I
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_281

    .line 1104
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_281

    .line 1103
    .end local v1    # "count":I
    .restart local v31    # "count":I
    :cond_27f
    move/from16 v1, v31

    .line 1109
    .end local v31    # "count":I
    .restart local v1    # "count":I
    :cond_281
    :goto_281
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_298

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_298

    aget v4, v10, v19

    if-ne v4, v5, :cond_298

    aget v4, v10, v17

    if-eq v4, v5, :cond_294

    goto :goto_298

    :cond_294
    move/from16 v40, v6

    move v5, v12

    goto :goto_2cb

    .line 1113
    :cond_298
    :goto_298
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1115
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1114
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1113
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1116
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v40, v6

    .end local v6    # "childState":I
    .restart local v40    # "childState":I
    aget v6, v15, v19

    .line 1118
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1117
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1116
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1119
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 1122
    .end local v4    # "ascent":I
    .end local v12    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_2cb
    if-eqz v14, :cond_347

    move/from16 v4, v30

    const/high16 v6, -0x80000000

    .end local v30    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_2da

    if-nez v4, :cond_2d6

    goto :goto_2da

    :cond_2d6
    move/from16 v26, v5

    goto/16 :goto_34b

    .line 1124
    :cond_2da
    :goto_2da
    const/4 v6, 0x0

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1126
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2de
    if-ge v6, v1, :cond_342

    .line 1127
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1129
    .restart local v8    # "child":Landroid/view/View;
    if-nez v8, :cond_2f4

    .line 1130
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1131
    move/from16 v26, v5

    move/from16 v30, v6

    goto :goto_33b

    .line 1134
    :cond_2f4
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_304

    .line 1135
    invoke-virtual {v7, v8, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v6, v9

    .line 1136
    move/from16 v26, v5

    goto :goto_33d

    .line 1139
    :cond_304
    nop

    .line 1140
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1141
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_322

    .line 1142
    iget v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v5

    .end local v5    # "maxHeight":I
    .local v26, "maxHeight":I
    iget v5, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    move/from16 v30, v6

    .end local v6    # "i":I
    .local v30, "i":I
    iget v6, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1143
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v12, v5

    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_33b

    .line 1145
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .restart local v5    # "maxHeight":I
    .restart local v6    # "i":I
    :cond_322
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1146
    .local v5, "totalLength":I
    add-int v6, v5, v3

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v12

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v12

    .line 1147
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v6, v12

    .line 1146
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1126
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .local v5, "maxHeight":I
    .restart local v6    # "i":I
    :goto_33b
    move/from16 v6, v30

    .end local v5    # "maxHeight":I
    .restart local v26    # "maxHeight":I
    :goto_33d
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v26

    goto :goto_2de

    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    :cond_342
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    goto :goto_34b

    .line 1122
    .end local v4    # "widthMode":I
    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    .local v30, "widthMode":I
    :cond_347
    move/from16 v26, v5

    move/from16 v4, v30

    .line 1153
    .end local v5    # "maxHeight":I
    .end local v30    # "widthMode":I
    .restart local v4    # "widthMode":I
    .restart local v26    # "maxHeight":I
    :goto_34b
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1155
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1158
    .local v5, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1161
    move/from16 v6, p1

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 1162
    .local v9, "widthSizeAndState":I
    const v8, 0xffffff

    and-int v5, v9, v8

    .line 1167
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v8, v5, v8

    .line 1168
    .local v8, "delta":I
    if-nez v24, :cond_419

    if-eqz v8, :cond_386

    cmpl-float v30, v0, v28

    if-lez v30, :cond_386

    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_422

    .line 1279
    :cond_386
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1283
    if-eqz v14, :cond_3f9

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v4, v12, :cond_3f9

    .line 1284
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_391
    if-ge v12, v1, :cond_3ee

    .line 1285
    move/from16 v31, v0

    .end local v0    # "totalWeight":F
    .local v31, "totalWeight":F
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1287
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3db

    move/from16 v16, v2

    .end local v2    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v33, v5

    const/16 v5, 0x8

    .end local v5    # "widthSize":I
    .local v33, "widthSize":I
    if-ne v2, v5, :cond_3ac

    .line 1288
    move/from16 v35, v3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3e3

    .line 1291
    :cond_3ac
    nop

    .line 1292
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1294
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1295
    .local v5, "childExtra":F
    cmpl-float v17, v5, v28

    if-lez v17, :cond_3d2

    .line 1296
    nop

    .line 1297
    move-object/from16 v17, v2

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1298
    move/from16 v35, v3

    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1296
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3e3

    .line 1295
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v35    # "largestChildWidth":I
    .restart local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "childExtra":F
    :cond_3d2
    move-object/from16 v17, v2

    move/from16 v35, v3

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v3    # "largestChildWidth":I
    .end local v5    # "childExtra":F
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v35    # "largestChildWidth":I
    goto :goto_3e3

    .line 1287
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v2, "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .local v5, "widthSize":I
    :cond_3db
    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1284
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_3e3
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v0, v31

    move/from16 v5, v33

    move/from16 v3, v35

    goto :goto_391

    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_3ee
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    goto :goto_403

    .line 1283
    .end local v12    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_3f9
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1305
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_403
    move/from16 v12, p2

    move/from16 v34, v1

    move/from16 v25, v9

    move/from16 v36, v11

    move/from16 v2, v16

    move/from16 v5, v26

    move/from16 v26, v14

    move/from16 v45, v40

    move/from16 v40, v4

    move/from16 v4, v45

    goto/16 :goto_611

    .line 1168
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_419
    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 1169
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v5    # "widthSize":I
    .local v3, "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_422
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v5, v0, v28

    if-lez v5, :cond_429

    goto :goto_42b

    :cond_429
    move/from16 v0, v31

    .line 1171
    .local v0, "weightSum":F
    :goto_42b
    const/4 v5, -0x1

    aput v5, v10, v17

    aput v5, v10, v19

    aput v5, v10, v20

    const/4 v12, 0x0

    aput v5, v10, v12

    .line 1172
    aput v5, v15, v17

    aput v5, v15, v19

    aput v5, v15, v20

    aput v5, v15, v12

    .line 1173
    const/4 v5, -0x1

    .line 1175
    .end local v26    # "maxHeight":I
    .local v5, "maxHeight":I
    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1177
    const/4 v12, 0x0

    move v2, v12

    move v12, v8

    move v8, v5

    move/from16 v5, v40

    .end local v40    # "childState":I
    .local v2, "i":I
    .local v5, "childState":I
    .local v8, "maxHeight":I
    .local v12, "delta":I
    :goto_446
    if-ge v2, v1, :cond_5ae

    .line 1178
    move/from16 v36, v11

    .end local v11    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1180
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_590

    move/from16 v26, v14

    .end local v14    # "useLargestChild":Z
    .local v26, "useLargestChild":Z
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v34, v1

    const/16 v1, 0x8

    .end local v1    # "count":I
    .local v34, "count":I
    if-ne v14, v1, :cond_467

    .line 1181
    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/16 v27, -0x2

    move/from16 v12, p2

    goto/16 :goto_59d

    .line 1184
    :cond_467
    nop

    .line 1185
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1187
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1188
    .local v1, "childExtra":F
    cmpl-float v37, v1, v28

    if-lez v37, :cond_4db

    .line 1190
    int-to-float v6, v12

    mul-float v6, v6, v1

    div-float/2addr v6, v0

    float-to-int v6, v6

    .line 1191
    .local v6, "share":I
    sub-float/2addr v0, v1

    .line 1192
    sub-int/2addr v12, v6

    .line 1194
    nop

    .line 1196
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v38, v0

    .end local v0    # "weightSum":F
    .local v38, "weightSum":F
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v37, v37, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v37, v0

    move/from16 v37, v1

    .end local v1    # "childExtra":F
    .local v37, "childExtra":F
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1194
    move/from16 v25, v9

    move/from16 v39, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v25, "widthSizeAndState":I
    .local v39, "delta":I
    invoke-static {v12, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1201
    .local v0, "childHeightMeasureSpec":I
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_4b7

    if-eq v4, v9, :cond_4a7

    goto :goto_4b7

    .line 1214
    :cond_4a7
    nop

    .line 1215
    if-lez v6, :cond_4ac

    move v1, v6

    goto :goto_4ad

    :cond_4ac
    const/4 v1, 0x0

    .line 1214
    :goto_4ad
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    move/from16 v40, v4

    goto :goto_4ca

    .line 1204
    :cond_4b7
    :goto_4b7
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1205
    .local v1, "childWidth":I
    if-gez v1, :cond_4bf

    .line 1206
    const/4 v1, 0x0

    .line 1209
    :cond_4bf
    nop

    .line 1210
    move/from16 v40, v4

    .end local v4    # "widthMode":I
    .local v40, "widthMode":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1209
    invoke-virtual {v11, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1212
    .end local v1    # "childWidth":I
    nop

    .line 1220
    :goto_4ca
    nop

    .line 1221
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    .line 1220
    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v38

    move/from16 v1, v39

    goto :goto_4e6

    .line 1188
    .end local v6    # "share":I
    .end local v25    # "widthSizeAndState":I
    .end local v37    # "childExtra":F
    .end local v38    # "weightSum":F
    .end local v39    # "delta":I
    .end local v40    # "widthMode":I
    .local v0, "weightSum":F
    .local v1, "childExtra":F
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .restart local v12    # "delta":I
    :cond_4db
    move/from16 v37, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .line 1224
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v37    # "childExtra":F
    .restart local v40    # "widthMode":I
    :goto_4e6
    if-eqz v23, :cond_4fd

    .line 1225
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1226
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v4, v6

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_515

    .line 1228
    :cond_4fd
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1229
    .local v4, "totalLength":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1230
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    .line 1229
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1233
    .end local v4    # "totalLength":I
    :goto_515
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v13, v4, :cond_520

    iget v4, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_520

    const/4 v4, 0x1

    goto :goto_521

    :cond_520
    const/4 v4, 0x0

    .line 1236
    .local v4, "matchHeightLocally":Z
    :goto_521
    iget v6, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    .line 1237
    .local v6, "margin":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 1238
    .local v9, "childHeight":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1239
    nop

    .line 1240
    move/from16 v39, v0

    if-eqz v4, :cond_536

    move v0, v6

    goto :goto_537

    :cond_536
    move v0, v9

    .line 1239
    .end local v0    # "weightSum":F
    .local v39, "weightSum":F
    :goto_537
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1242
    .end local v3    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_546

    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v41, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v3, v0, :cond_548

    const/4 v0, 0x1

    goto :goto_549

    .end local v41    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_546
    move/from16 v41, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_548
    const/4 v0, 0x0

    .line 1244
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_549
    if-eqz v21, :cond_583

    .line 1245
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 1246
    .local v3, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v3, v0, :cond_57e

    .line 1248
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_55b

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_55d

    :cond_55b
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_55d
    and-int/lit8 v0, v0, 0x70

    .line 1250
    .local v0, "gravity":I
    shr-int/lit8 v42, v0, 0x4

    const/16 v27, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1253
    .local v42, "index":I
    move/from16 v43, v0

    .end local v0    # "gravity":I
    .local v43, "gravity":I
    aget v0, v10, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v42

    .line 1254
    aget v0, v15, v42

    move/from16 v44, v1

    .end local v1    # "delta":I
    .local v44, "delta":I
    sub-int v1, v9, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v42

    goto :goto_589

    .line 1246
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "delta":I
    .restart local v1    # "delta":I
    :cond_57e
    move/from16 v44, v1

    const/16 v27, -0x2

    .end local v1    # "delta":I
    .restart local v44    # "delta":I
    goto :goto_589

    .line 1244
    .end local v3    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v44    # "delta":I
    .local v0, "allFillParent":Z
    .restart local v1    # "delta":I
    :cond_583
    move/from16 v18, v0

    move/from16 v44, v1

    const/16 v27, -0x2

    .line 1177
    .end local v0    # "allFillParent":Z
    .end local v1    # "delta":I
    .end local v4    # "matchHeightLocally":Z
    .end local v6    # "margin":I
    .end local v9    # "childHeight":I
    .end local v11    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v37    # "childExtra":F
    .restart local v18    # "allFillParent":Z
    .restart local v44    # "delta":I
    :goto_589
    move/from16 v0, v39

    move/from16 v3, v41

    move/from16 v1, v44

    goto :goto_59d

    .line 1180
    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v39    # "weightSum":F
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .end local v44    # "delta":I
    .local v0, "weightSum":F
    .local v1, "count":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "widthMode":I
    .local v9, "widthSizeAndState":I
    .restart local v11    # "child":Landroid/view/View;
    .restart local v12    # "delta":I
    .local v14, "useLargestChild":Z
    :cond_590
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    move/from16 v26, v14

    const/16 v27, -0x2

    move/from16 v12, p2

    .line 1177
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v40    # "widthMode":I
    :goto_59d
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, p1

    move v12, v1

    move/from16 v9, v25

    move/from16 v14, v26

    move/from16 v1, v34

    move/from16 v11, v36

    move/from16 v4, v40

    goto/16 :goto_446

    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v36    # "weightedMaxHeight":I
    .end local v40    # "widthMode":I
    .local v1, "count":I
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .local v11, "weightedMaxHeight":I
    .restart local v12    # "delta":I
    .restart local v14    # "useLargestChild":Z
    :cond_5ae
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move/from16 v36, v11

    move v1, v12

    move/from16 v26, v14

    move/from16 v12, p2

    .line 1261
    .end local v2    # "i":I
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v36    # "weightedMaxHeight":I
    .restart local v40    # "widthMode":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1266
    aget v2, v10, v20

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5de

    const/4 v2, 0x0

    aget v6, v10, v2

    if-ne v6, v4, :cond_5de

    aget v2, v10, v19

    if-ne v2, v4, :cond_5de

    aget v2, v10, v17

    if-eq v2, v4, :cond_5dc

    goto :goto_5de

    :cond_5dc
    move v6, v8

    goto :goto_60d

    .line 1270
    :cond_5de
    :goto_5de
    aget v2, v10, v17

    const/4 v4, 0x0

    aget v6, v10, v4

    aget v9, v10, v20

    aget v11, v10, v19

    .line 1272
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1271
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1270
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1273
    .local v2, "ascent":I
    aget v6, v15, v17

    aget v4, v15, v4

    aget v9, v15, v20

    aget v11, v15, v19

    .line 1275
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1274
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1273
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1276
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1278
    .end local v0    # "weightSum":F
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    .end local v8    # "maxHeight":I
    .local v6, "maxHeight":I
    :goto_60d
    move v8, v1

    move v2, v3

    move v4, v5

    move v5, v6

    .line 1305
    .end local v1    # "delta":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v6    # "maxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v8, "delta":I
    :goto_611
    if-nez v18, :cond_618

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_618

    .line 1306
    move v5, v2

    .line 1309
    :cond_618
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1314
    .end local v5    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v4

    or-int v1, v25, v1

    shl-int/lit8 v3, v4, 0x10

    .line 1315
    invoke-static {v0, v12, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1314
    invoke-virtual {v7, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1318
    if-eqz v22, :cond_642

    .line 1319
    move/from16 v1, p1

    move/from16 v3, v34

    .end local v34    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_646

    .line 1318
    .end local v3    # "count":I
    .restart local v34    # "count":I
    :cond_642
    move/from16 v1, p1

    move/from16 v3, v34

    .line 1321
    .end local v34    # "count":I
    .restart local v3    # "count":I
    :goto_646
    return-void
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1368
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 605
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 608
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 609
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 610
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 611
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 613
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 615
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 616
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 618
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 619
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 621
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 622
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 624
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 627
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    move/from16 v19, v14

    move v14, v0

    move v0, v5

    move v5, v2

    move/from16 v2, v18

    move/from16 v18, v6

    move v6, v1

    move/from16 v37, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v37

    .end local v1    # "childState":I
    .local v0, "totalWeight":F
    .local v2, "i":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    .local v19, "skippedMeasure":Z
    :goto_36
    move/from16 v20, v4

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    const/16 v1, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v2, v11, :cond_1bf

    .line 628
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 630
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_58

    .line 631
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v1, v1, v21

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 632
    move/from16 v31, v11

    move/from16 v26, v13

    move/from16 v4, v20

    goto/16 :goto_1b3

    .line 635
    :cond_58
    move/from16 v26, v3

    .end local v3    # "largestChildHeight":I
    .local v26, "largestChildHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_6f

    .line 636
    invoke-virtual {v7, v4, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 637
    move/from16 v31, v11

    move/from16 v4, v20

    move/from16 v3, v26

    move/from16 v26, v13

    goto/16 :goto_1b3

    .line 640
    :cond_6f
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 641
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v3

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    :cond_7c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 646
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v27, v0, v1

    .line 648
    .end local v0    # "totalWeight":F
    .local v27, "totalWeight":F
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_bb

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_bb

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_bb

    .line 652
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 653
    .local v0, "totalLength":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 654
    const/16 v19, 0x1

    .line 655
    .end local v0    # "totalLength":I
    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v31, v11

    move/from16 v21, v20

    move/from16 v2, v26

    move/from16 v25, v28

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v26, v13

    move-object v13, v3

    move-object v3, v4

    goto/16 :goto_12e

    .line 648
    .end local v28    # "i":I
    .restart local v2    # "i":I
    :cond_bb
    move/from16 v28, v2

    .line 656
    .end local v2    # "i":I
    .restart local v28    # "i":I
    const/high16 v0, -0x80000000

    .line 658
    .local v0, "oldHeight":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_cf

    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_cf

    .line 663
    const/4 v0, 0x0

    .line 664
    const/4 v1, -0x2

    iput v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v2, v0

    goto :goto_d0

    .line 671
    :cond_cf
    move v2, v0

    .end local v0    # "oldHeight":I
    .local v2, "oldHeight":I
    :goto_d0
    const/16 v29, 0x0

    .line 673
    cmpl-float v0, v27, v23

    if-nez v0, :cond_db

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_dd

    :cond_db
    const/16 v30, 0x0

    .line 671
    :goto_dd
    move-object/from16 v0, p0

    const/high16 v8, -0x80000000

    const/high16 v21, 0x40000000    # 2.0f

    move-object v1, v4

    move v8, v2

    move/from16 v25, v28

    .end local v2    # "oldHeight":I
    .end local v28    # "i":I
    .local v8, "oldHeight":I
    .local v25, "i":I
    move/from16 v2, v25

    move/from16 v9, v26

    move/from16 v26, v13

    move-object v13, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "largestChildHeight":I
    .local v13, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v26, "heightMode":I
    move/from16 v3, p1

    move/from16 v31, v11

    move/from16 v21, v20

    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v20, v4

    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .local v20, "child":Landroid/view/View;
    .local v21, "weightedMaxWidth":I
    .local v31, "count":I
    move/from16 v4, v29

    move/from16 v32, v5

    .end local v5    # "alternativeMaxWidth":I
    .local v32, "alternativeMaxWidth":I
    move/from16 v5, p2

    move/from16 v33, v6

    .end local v6    # "childState":I
    .local v33, "childState":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 675
    const/high16 v0, -0x80000000

    if-eq v8, v0, :cond_10b

    .line 676
    iput v8, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 679
    :cond_10b
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 680
    .local v0, "childHeight":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 681
    .local v1, "totalLength":I
    add-int v2, v1, v0

    iget v3, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 682
    move-object/from16 v3, v20

    .end local v20    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 681
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 684
    if-eqz v10, :cond_12d

    .line 685
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v9    # "largestChildHeight":I
    .local v2, "largestChildHeight":I
    goto :goto_12e

    .line 684
    .end local v2    # "largestChildHeight":I
    .restart local v9    # "largestChildHeight":I
    :cond_12d
    move v2, v9

    .line 693
    .end local v0    # "childHeight":I
    .end local v1    # "totalLength":I
    .end local v8    # "oldHeight":I
    .end local v9    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    :goto_12e
    if-ltz v15, :cond_13b

    move/from16 v4, v25

    .end local v25    # "i":I
    .local v4, "i":I
    add-int/lit8 v0, v4, 0x1

    if-ne v15, v0, :cond_13d

    .line 694
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    goto :goto_13d

    .line 693
    .end local v4    # "i":I
    .restart local v25    # "i":I
    :cond_13b
    move/from16 v4, v25

    .line 700
    .end local v25    # "i":I
    .restart local v4    # "i":I
    :cond_13d
    :goto_13d
    if-ge v4, v15, :cond_14e

    iget v0, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_146

    goto :goto_14e

    .line 701
    :cond_146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_14e
    :goto_14e
    const/4 v0, 0x0

    .line 708
    .local v0, "matchWidthLocally":Z
    if-eq v12, v11, :cond_159

    iget v1, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_159

    .line 713
    const/16 v18, 0x1

    .line 714
    const/4 v0, 0x1

    .line 717
    :cond_159
    iget v1, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v5, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 718
    .local v1, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 719
    .local v5, "measuredWidth":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 720
    .end local v14    # "maxWidth":I
    .local v6, "maxWidth":I
    nop

    .line 721
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    .line 720
    move/from16 v9, v33

    .end local v33    # "childState":I
    .local v9, "childState":I
    invoke-static {v9, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 723
    .end local v9    # "childState":I
    .local v8, "childState":I
    if-eqz v17, :cond_17b

    iget v9, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_17b

    const/4 v9, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v9, 0x0

    .line 724
    .end local v17    # "allFillParent":Z
    .local v9, "allFillParent":Z
    :goto_17c
    iget v11, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v11, v11, v23

    if-lez v11, :cond_192

    .line 729
    nop

    .line 730
    if-eqz v0, :cond_187

    move v11, v1

    goto :goto_188

    :cond_187
    move v11, v5

    .line 729
    :goto_188
    move/from16 v14, v21

    .end local v21    # "weightedMaxWidth":I
    .local v14, "weightedMaxWidth":I
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v20, v1

    move v14, v11

    .end local v14    # "weightedMaxWidth":I
    .local v11, "weightedMaxWidth":I
    goto :goto_1a3

    .line 732
    .end local v11    # "weightedMaxWidth":I
    .restart local v21    # "weightedMaxWidth":I
    :cond_192
    move/from16 v14, v21

    .line 733
    .end local v21    # "weightedMaxWidth":I
    .restart local v14    # "weightedMaxWidth":I
    if-eqz v0, :cond_198

    move v11, v1

    goto :goto_199

    :cond_198
    move v11, v5

    .line 732
    :goto_199
    move/from16 v20, v1

    move/from16 v1, v32

    .end local v32    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .local v20, "margin":I
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v32, v1

    .line 736
    .end local v1    # "alternativeMaxWidth":I
    .restart local v32    # "alternativeMaxWidth":I
    :goto_1a3
    invoke-virtual {v7, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v4

    move v3, v2

    move/from16 v17, v9

    move v4, v14

    move/from16 v0, v27

    move/from16 v5, v32

    move v2, v1

    move v14, v6

    move v6, v8

    .line 627
    .end local v8    # "childState":I
    .end local v9    # "allFillParent":Z
    .end local v13    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v20    # "margin":I
    .end local v27    # "totalWeight":F
    .end local v32    # "alternativeMaxWidth":I
    .local v0, "totalWeight":F
    .local v2, "i":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_1b3
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v13, v26

    move/from16 v11, v31

    goto/16 :goto_36

    .end local v4    # "weightedMaxWidth":I
    .end local v26    # "heightMode":I
    .end local v31    # "count":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .local v20, "weightedMaxWidth":I
    :cond_1bf
    move v4, v2

    move v9, v3

    move v1, v5

    move/from16 v31, v11

    move/from16 v26, v13

    move/from16 v3, v20

    const/16 v2, 0x8

    const/high16 v11, 0x40000000    # 2.0f

    .line 739
    .end local v2    # "i":I
    .end local v5    # "alternativeMaxWidth":I
    .end local v11    # "count":I
    .end local v13    # "heightMode":I
    .end local v20    # "weightedMaxWidth":I
    .restart local v1    # "alternativeMaxWidth":I
    .local v3, "weightedMaxWidth":I
    .local v9, "largestChildHeight":I
    .restart local v26    # "heightMode":I
    .restart local v31    # "count":I
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v4, :cond_1e0

    move/from16 v4, v31

    .end local v31    # "count":I
    .local v4, "count":I
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 740
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v5, v8

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1e2

    .line 739
    .end local v4    # "count":I
    .restart local v31    # "count":I
    :cond_1e0
    move/from16 v4, v31

    .line 743
    .end local v31    # "count":I
    .restart local v4    # "count":I
    :cond_1e2
    :goto_1e2
    if-eqz v10, :cond_244

    move/from16 v5, v26

    const/high16 v8, -0x80000000

    .end local v26    # "heightMode":I
    .local v5, "heightMode":I
    if-eq v5, v8, :cond_1f0

    if-nez v5, :cond_1ed

    goto :goto_1f0

    :cond_1ed
    move/from16 v33, v6

    goto :goto_248

    .line 745
    :cond_1f0
    :goto_1f0
    const/4 v8, 0x0

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 747
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f4
    if-ge v8, v4, :cond_241

    .line 748
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 750
    .local v13, "child":Landroid/view/View;
    if-nez v13, :cond_209

    .line 751
    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v20

    add-int v11, v11, v20

    iput v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 752
    move/from16 v33, v6

    goto :goto_238

    .line 755
    :cond_209
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v2, :cond_217

    .line 756
    invoke-virtual {v7, v13, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 757
    move/from16 v33, v6

    goto :goto_238

    .line 760
    :cond_217
    nop

    .line 761
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 763
    .local v11, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 764
    .local v2, "totalLength":I
    add-int v21, v2, v9

    move/from16 v33, v6

    .end local v6    # "childState":I
    .restart local v33    # "childState":I
    iget v6, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v6

    iget v6, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v6

    .line 765
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 764
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 747
    .end local v2    # "totalLength":I
    .end local v11    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v13    # "child":Landroid/view/View;
    :goto_238
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v33

    const/16 v2, 0x8

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_1f4

    .end local v33    # "childState":I
    .restart local v6    # "childState":I
    :cond_241
    move/from16 v33, v6

    .end local v6    # "childState":I
    .restart local v33    # "childState":I
    goto :goto_248

    .line 743
    .end local v5    # "heightMode":I
    .end local v8    # "i":I
    .end local v33    # "childState":I
    .restart local v6    # "childState":I
    .restart local v26    # "heightMode":I
    :cond_244
    move/from16 v33, v6

    move/from16 v5, v26

    .line 770
    .end local v6    # "childState":I
    .end local v26    # "heightMode":I
    .restart local v5    # "heightMode":I
    .restart local v33    # "childState":I
    :goto_248
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v2, v6

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 772
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 775
    .local v2, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 778
    move/from16 v6, p2

    move v8, v9

    const/4 v9, 0x0

    .end local v9    # "largestChildHeight":I
    .local v8, "largestChildHeight":I
    invoke-static {v2, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v11

    .line 779
    .local v11, "heightSizeAndState":I
    const v9, 0xffffff

    and-int v2, v11, v9

    .line 784
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v9, v2, v9

    .line 785
    .local v9, "delta":I
    if-nez v19, :cond_305

    if-eqz v9, :cond_281

    cmpl-float v13, v0, v23

    if-lez v13, :cond_281

    move/from16 v21, v0

    move/from16 v26, v2

    move/from16 v27, v3

    goto/16 :goto_30b

    .line 857
    :cond_281
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 863
    if-eqz v10, :cond_2ec

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v5, v13, :cond_2ec

    .line 864
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_28c
    if-ge v13, v4, :cond_2e3

    .line 865
    move/from16 v21, v0

    .end local v0    # "totalWeight":F
    .local v21, "totalWeight":F
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2d2

    move/from16 v16, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v26, v2

    const/16 v2, 0x8

    .end local v2    # "heightSize":I
    .local v26, "heightSize":I
    if-ne v1, v2, :cond_2a5

    .line 868
    move/from16 v27, v3

    goto :goto_2d8

    .line 871
    :cond_2a5
    nop

    .line 872
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 874
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 875
    .local v2, "childExtra":F
    cmpl-float v22, v2, v23

    if-lez v22, :cond_2cb

    .line 876
    nop

    .line 877
    move-object/from16 v22, v1

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v24, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "childExtra":F
    .local v24, "childExtra":F
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 879
    move/from16 v27, v3

    .end local v3    # "weightedMaxWidth":I
    .local v27, "weightedMaxWidth":I
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 876
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2d8

    .line 875
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "childExtra":F
    .end local v27    # "weightedMaxWidth":I
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v2    # "childExtra":F
    .restart local v3    # "weightedMaxWidth":I
    :cond_2cb
    move-object/from16 v22, v1

    move/from16 v24, v2

    move/from16 v27, v3

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .end local v3    # "weightedMaxWidth":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v24    # "childExtra":F
    .restart local v27    # "weightedMaxWidth":I
    goto :goto_2d8

    .line 867
    .end local v16    # "alternativeMaxWidth":I
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "childExtra":F
    .end local v26    # "heightSize":I
    .end local v27    # "weightedMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .local v2, "heightSize":I
    .restart local v3    # "weightedMaxWidth":I
    :cond_2d2
    move/from16 v16, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .line 864
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v26    # "heightSize":I
    .restart local v27    # "weightedMaxWidth":I
    :goto_2d8
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v0, v21

    move/from16 v2, v26

    move/from16 v3, v27

    goto :goto_28c

    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v26    # "heightSize":I
    .end local v27    # "weightedMaxWidth":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "weightedMaxWidth":I
    :cond_2e3
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v26    # "heightSize":I
    .restart local v27    # "weightedMaxWidth":I
    goto :goto_2f4

    .line 863
    .end local v13    # "i":I
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v26    # "heightSize":I
    .end local v27    # "weightedMaxWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "weightedMaxWidth":I
    :cond_2ec
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .line 886
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v26    # "heightSize":I
    .restart local v27    # "weightedMaxWidth":I
    :goto_2f4
    move/from16 v13, p1

    move/from16 v34, v5

    move/from16 v28, v8

    move v5, v9

    move/from16 v29, v10

    move/from16 v30, v15

    move/from16 v1, v16

    move/from16 v9, v33

    goto/16 :goto_43e

    .line 785
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v26    # "heightSize":I
    .end local v27    # "weightedMaxWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "weightedMaxWidth":I
    :cond_305
    move/from16 v21, v0

    move/from16 v26, v2

    move/from16 v27, v3

    .line 786
    .end local v0    # "totalWeight":F
    .end local v2    # "heightSize":I
    .end local v3    # "weightedMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v26    # "heightSize":I
    .restart local v27    # "weightedMaxWidth":I
    :goto_30b
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v2, v0, v23

    if-lez v2, :cond_312

    goto :goto_314

    :cond_312
    move/from16 v0, v21

    .line 788
    .local v0, "weightSum":F
    :goto_314
    const/4 v2, 0x0

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 790
    const/4 v3, 0x0

    move v13, v9

    move/from16 v9, v33

    .end local v33    # "childState":I
    .local v3, "i":I
    .local v9, "childState":I
    .local v13, "delta":I
    :goto_31b
    if-ge v3, v4, :cond_424

    .line 791
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 793
    .local v2, "child":Landroid/view/View;
    move/from16 v28, v8

    .end local v8    # "largestChildHeight":I
    .local v28, "largestChildHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    move/from16 v29, v10

    const/16 v10, 0x8

    .end local v10    # "useLargestChild":Z
    .local v29, "useLargestChild":Z
    if-ne v8, v10, :cond_337

    .line 794
    move/from16 v34, v5

    move/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, p1

    goto/16 :goto_415

    .line 797
    :cond_337
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 799
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v10, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 800
    .local v10, "childExtra":F
    cmpl-float v30, v10, v23

    if-lez v30, :cond_3af

    .line 802
    move/from16 v30, v15

    .end local v15    # "baselineChildIndex":I
    .local v30, "baselineChildIndex":I
    int-to-float v15, v13

    mul-float v15, v15, v10

    div-float/2addr v15, v0

    float-to-int v15, v15

    .line 803
    .local v15, "share":I
    sub-float/2addr v0, v10

    .line 804
    sub-int/2addr v13, v15

    .line 806
    nop

    .line 807
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v32, v0

    .end local v0    # "weightSum":F
    .local v32, "weightSum":F
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v31, v31, v0

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v31, v0

    move/from16 v31, v10

    .end local v10    # "childExtra":F
    .local v31, "childExtra":F
    iget v10, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 806
    move/from16 v33, v13

    move/from16 v13, p1

    .end local v13    # "delta":I
    .local v33, "delta":I
    invoke-static {v13, v0, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 812
    .local v0, "childWidthMeasureSpec":I
    iget v10, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v10, :cond_38a

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v5, v10, :cond_378

    move/from16 v34, v5

    goto :goto_38c

    .line 825
    :cond_378
    nop

    .line 826
    move/from16 v34, v5

    if-lez v15, :cond_37f

    move v5, v15

    goto :goto_380

    :cond_37f
    const/4 v5, 0x0

    .end local v5    # "heightMode":I
    .local v34, "heightMode":I
    :goto_380
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 825
    invoke-virtual {v2, v0, v5}, Landroid/view/View;->measure(II)V

    move/from16 v35, v15

    goto :goto_3a1

    .line 812
    .end local v34    # "heightMode":I
    .restart local v5    # "heightMode":I
    :cond_38a
    move/from16 v34, v5

    .line 815
    .end local v5    # "heightMode":I
    .restart local v34    # "heightMode":I
    :goto_38c
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v15

    .line 816
    .local v5, "childHeight":I
    if-gez v5, :cond_394

    .line 817
    const/4 v5, 0x0

    .line 820
    :cond_394
    nop

    .line 821
    move/from16 v35, v15

    const/high16 v10, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v35, "share":I
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 820
    invoke-virtual {v2, v0, v15}, Landroid/view/View;->measure(II)V

    .line 822
    .end local v5    # "childHeight":I
    nop

    .line 831
    :goto_3a1
    nop

    .line 832
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    and-int/lit16 v5, v5, -0x100

    .line 831
    invoke-static {v9, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v0, v32

    goto :goto_3ba

    .line 800
    .end local v30    # "baselineChildIndex":I
    .end local v31    # "childExtra":F
    .end local v32    # "weightSum":F
    .end local v33    # "delta":I
    .end local v34    # "heightMode":I
    .end local v35    # "share":I
    .local v0, "weightSum":F
    .local v5, "heightMode":I
    .restart local v10    # "childExtra":F
    .restart local v13    # "delta":I
    .local v15, "baselineChildIndex":I
    :cond_3af
    move/from16 v34, v5

    move/from16 v31, v10

    move v5, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .end local v10    # "childExtra":F
    .end local v13    # "delta":I
    .end local v15    # "baselineChildIndex":I
    .local v5, "delta":I
    .restart local v30    # "baselineChildIndex":I
    .restart local v31    # "childExtra":F
    .restart local v34    # "heightMode":I
    move/from16 v33, v5

    .line 836
    .end local v5    # "delta":I
    .restart local v33    # "delta":I
    :goto_3ba
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v10, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v10

    .line 837
    .local v5, "margin":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v5

    .line 838
    .local v10, "measuredWidth":I
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 840
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_3d5

    iget v15, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v32, v0

    const/4 v0, -0x1

    .end local v0    # "weightSum":F
    .restart local v32    # "weightSum":F
    if-ne v15, v0, :cond_3d7

    const/4 v0, 0x1

    goto :goto_3d8

    .end local v32    # "weightSum":F
    .restart local v0    # "weightSum":F
    :cond_3d5
    move/from16 v32, v0

    .end local v0    # "weightSum":F
    .restart local v32    # "weightSum":F
    :cond_3d7
    const/4 v0, 0x0

    .line 843
    .local v0, "matchWidthLocally":Z
    :goto_3d8
    nop

    .line 844
    if-eqz v0, :cond_3dd

    move v15, v5

    goto :goto_3de

    :cond_3dd
    move v15, v10

    .line 843
    :goto_3de
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 846
    if-eqz v17, :cond_3ed

    iget v15, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .local v35, "matchWidthLocally":Z
    if-ne v15, v0, :cond_3f0

    const/4 v15, 0x1

    goto :goto_3f1

    .end local v35    # "matchWidthLocally":Z
    .restart local v0    # "matchWidthLocally":Z
    :cond_3ed
    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .restart local v35    # "matchWidthLocally":Z
    :cond_3f0
    const/4 v15, 0x0

    .line 848
    .end local v17    # "allFillParent":Z
    .local v15, "allFillParent":Z
    :goto_3f1
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 849
    .local v0, "totalLength":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v36, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v36, "alternativeMaxWidth":I
    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v17, v17, v1

    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v17, v17, v1

    .line 850
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v17, v1

    .line 849
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v17, v15

    move/from16 v0, v32

    move/from16 v1, v36

    .line 790
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "margin":I
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "measuredWidth":I
    .end local v15    # "allFillParent":Z
    .end local v31    # "childExtra":F
    .end local v32    # "weightSum":F
    .end local v35    # "matchWidthLocally":Z
    .end local v36    # "alternativeMaxWidth":I
    .local v0, "weightSum":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_415
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v28

    move/from16 v10, v29

    move/from16 v15, v30

    move/from16 v13, v33

    move/from16 v5, v34

    const/4 v2, 0x0

    goto/16 :goto_31b

    .end local v28    # "largestChildHeight":I
    .end local v29    # "useLargestChild":Z
    .end local v30    # "baselineChildIndex":I
    .end local v33    # "delta":I
    .end local v34    # "heightMode":I
    .local v5, "heightMode":I
    .local v8, "largestChildHeight":I
    .local v10, "useLargestChild":Z
    .restart local v13    # "delta":I
    .local v15, "baselineChildIndex":I
    :cond_424
    move/from16 v34, v5

    move/from16 v28, v8

    move/from16 v29, v10

    move v5, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .line 854
    .end local v3    # "i":I
    .end local v8    # "largestChildHeight":I
    .end local v10    # "useLargestChild":Z
    .end local v13    # "delta":I
    .end local v15    # "baselineChildIndex":I
    .local v5, "delta":I
    .restart local v28    # "largestChildHeight":I
    .restart local v29    # "useLargestChild":Z
    .restart local v30    # "baselineChildIndex":I
    .restart local v34    # "heightMode":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    add-int/2addr v3, v8

    add-int/2addr v2, v3

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 856
    .end local v0    # "weightSum":F
    nop

    .line 886
    :goto_43e
    if-nez v17, :cond_445

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_445

    .line 887
    move v14, v1

    .line 890
    :cond_445
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 895
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v13, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 898
    if-eqz v18, :cond_463

    .line 899
    invoke-direct {v7, v4, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 901
    :cond_463
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 293
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 294
    return-void

    .line 297
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 298
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 300
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 302
    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1767
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1768
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1773
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1774
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1416
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1417
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1419
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1421
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 560
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 561
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 563
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 565
    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z

    .line 402
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 403
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I

    .line 498
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 502
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 503
    return-void

    .line 499
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 243
    return-void

    .line 245
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 246
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 250
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 251
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 253
    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 255
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 267
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 268
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 1689
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1690
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1691
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1694
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1695
    or-int/lit8 p1, p1, 0x30

    .line 1698
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1699
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1701
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I

    .line 1714
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1715
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    .line 1716
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1719
    :cond_14
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 428
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 429
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1664
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1665
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1666
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1668
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 205
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 208
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 209
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 5
    .param p1, "verticalGravity"    # I

    .line 1722
    and-int/lit8 v0, p1, 0x70

    .line 1723
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    .line 1724
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1725
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1727
    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F

    .line 555
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 556
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method
