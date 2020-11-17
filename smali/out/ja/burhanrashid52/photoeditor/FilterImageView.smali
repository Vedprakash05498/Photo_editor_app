.class Lja/burhanrashid52/photoeditor/FilterImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FilterImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;
    }
.end annotation


# instance fields
.field private mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 127
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 128
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 130
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_e
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 97
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 99
    :cond_e
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 56
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 57
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 59
    :cond_e
    return-void
.end method

.method public setImageLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 119
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageLevel(I)V

    .line 120
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 121
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_e
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 64
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_e
    return-void
.end method

.method public setImageResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_e
    return-void
.end method

.method public setImageState([IZ)V
    .registers 5
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageState([IZ)V

    .line 72
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_e
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 81
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_e
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 88
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 89
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_e
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 112
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    if-eqz v0, :cond_e

    .line 113
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/FilterImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_e
    return-void
.end method

.method public setOnImageChangedListener(Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;)V
    .registers 2
    .param p1, "onImageChangedListener"    # Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    .line 38
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/FilterImageView;->mOnImageChangedListener:Lja/burhanrashid52/photoeditor/FilterImageView$OnImageChangedListener;

    .line 39
    return-void
.end method
