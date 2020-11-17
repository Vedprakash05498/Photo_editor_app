.class public final Lcom/google/android/material/transition/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SlideDistanceProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "slideEdge"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 61
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 62
    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 7
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slideEdge"    # I
    .param p3, "slideDistance"    # I

    .line 128
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_64

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x30

    if-eq p2, v0, :cond_56

    const/16 v0, 0x50

    if-eq p2, v0, :cond_50

    const v0, 0x800003

    if-eq p2, v0, :cond_40

    const v0, 0x800005

    if-ne p2, v0, :cond_29

    .line 141
    nop

    .line 142
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    neg-int v0, p3

    int-to-float v0, v0

    goto :goto_24

    :cond_23
    int-to-float v0, p3

    .line 141
    :goto_24
    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 144
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid slide direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_40
    nop

    .line 139
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_49

    int-to-float v0, p3

    goto :goto_4b

    :cond_49
    neg-int v0, p3

    int-to-float v0, v0

    .line 138
    :goto_4b
    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 136
    :cond_50
    int-to-float v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 132
    :cond_56
    neg-int v0, p3

    int-to-float v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 134
    :cond_5d
    neg-int v0, p3

    int-to-float v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 130
    :cond_64
    int-to-float v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 7
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slideEdge"    # I
    .param p3, "slideDistance"    # I

    .line 150
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_63

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x30

    if-eq p2, v0, :cond_57

    const/16 v0, 0x50

    if-eq p2, v0, :cond_50

    const v0, 0x800003

    if-eq p2, v0, :cond_40

    const v0, 0x800005

    if-ne p2, v0, :cond_29

    .line 163
    nop

    .line 164
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    int-to-float v0, p3

    goto :goto_24

    :cond_22
    neg-int v0, p3

    int-to-float v0, v0

    .line 163
    :goto_24
    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 166
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid slide direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_40
    nop

    .line 161
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4a

    neg-int v0, p3

    int-to-float v0, v0

    goto :goto_4b

    :cond_4a
    int-to-float v0, p3

    .line 160
    :goto_4b
    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 158
    :cond_50
    neg-int v0, p3

    int-to-float v0, v0

    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 154
    :cond_57
    int-to-float v0, p3

    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 156
    :cond_5d
    int-to-float v0, p3

    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 152
    :cond_63
    neg-int v0, p3

    int-to-float v0, v0

    invoke-static {p1, v1, v0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startTranslation"    # F
    .param p2, "endTranslation"    # F

    .line 172
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    .line 173
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v4

    .line 172
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startTranslation"    # F
    .param p2, "endTranslation"    # F

    .line 178
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    .line 179
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v4

    .line 178
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 118
    return v0

    .line 121
    :cond_6
    nop

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 121
    return v0
.end method

.method private static isRtl(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 183
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 105
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    .line 105
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 112
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    .line 112
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getSlideDistance()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    return v0
.end method

.method public getSlideEdge()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    return v0
.end method

.method public setSlideDistance(I)V
    .registers 4
    .param p1, "slideDistance"    # I

    .line 94
    if-ltz p1, :cond_5

    .line 99
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    .line 100
    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSlideEdge(I)V
    .registers 2
    .param p1, "slideEdge"    # I

    .line 70
    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    .line 71
    return-void
.end method
