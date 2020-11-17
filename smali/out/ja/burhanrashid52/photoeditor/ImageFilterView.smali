.class Lja/burhanrashid52/photoeditor/ImageFilterView;
.super Landroid/opengl/GLSurfaceView;
.source "ImageFilterView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFilterView"


# instance fields
.field private isSaveImage:Z

.field private mCurrentEffect:Lja/burhanrashid52/photoeditor/PhotoFilter;

.field private mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

.field private mEffect:Landroid/media/effect/Effect;

.field private mEffectContext:Landroid/media/effect/EffectContext;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mInitialized:Z

.field private mOnSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

.field private mTextures:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    .line 40
    new-instance v0, Lja/burhanrashid52/photoeditor/TextureRenderer;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/TextureRenderer;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mInitialized:Z

    .line 48
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->isSaveImage:Z

    .line 52
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    .line 40
    new-instance v0, Lja/burhanrashid52/photoeditor/TextureRenderer;

    invoke-direct {v0}, Lja/burhanrashid52/photoeditor/TextureRenderer;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mInitialized:Z

    .line 48
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->isSaveImage:Z

    .line 57
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lja/burhanrashid52/photoeditor/ImageFilterView;)Lja/burhanrashid52/photoeditor/OnSaveBitmap;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/ImageFilterView;

    .line 34
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mOnSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    return-object v0
.end method

.method private applyEffect()V
    .registers 7

    .line 263
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mImageWidth:I

    iget v4, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mImageHeight:I

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 264
    return-void
.end method

.method private init()V
    .registers 2

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setEGLContextClientVersion(I)V

    .line 62
    invoke-virtual {p0, p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setRenderMode(I)V

    .line 64
    sget-object v0, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {p0, v0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 65
    return-void
.end method

.method private initEffect()V
    .registers 8

    .line 156
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object v0

    .line 157
    .local v0, "effectFactory":Landroid/media/effect/EffectFactory;
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    if-eqz v1, :cond_d

    .line 158
    invoke-virtual {v1}, Landroid/media/effect/Effect;->release()V

    .line 160
    :cond_d
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    if-eqz v1, :cond_47

    .line 161
    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/CustomEffect;->getEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 162
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/CustomEffect;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 163
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 164
    .local v3, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .end local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_29

    .line 166
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_45
    goto/16 :goto_1e6

    .line 168
    :cond_47
    sget-object v1, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    iget-object v2, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCurrentEffect:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v2}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.media.effect.effects.FlipEffect"

    const-string v4, "strength"

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v6, "scale"

    packed-switch v1, :pswitch_data_1e8

    :pswitch_5d
    goto/16 :goto_1e6

    .line 255
    :pswitch_5f
    const-string v1, "android.media.effect.effects.VignetteEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 256
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1e6

    .line 251
    :pswitch_70
    const-string v1, "android.media.effect.effects.TintEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 252
    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tint"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    goto/16 :goto_1e6

    .line 247
    :pswitch_86
    const-string v1, "android.media.effect.effects.ColorTemperatureEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 248
    const v2, 0x3f666666    # 0.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    goto/16 :goto_1e6

    .line 244
    :pswitch_9a
    const-string v1, "android.media.effect.effects.SharpenEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 245
    goto/16 :goto_1e6

    .line 241
    :pswitch_a4
    const-string v1, "android.media.effect.effects.SepiaEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 242
    goto/16 :goto_1e6

    .line 237
    :pswitch_ae
    const-string v1, "android.media.effect.effects.SaturateEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 238
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    goto/16 :goto_1e6

    .line 233
    :pswitch_bf
    const-string v1, "android.media.effect.effects.RotateEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 234
    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "angle"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    goto/16 :goto_1e6

    .line 230
    :pswitch_d4
    const-string v1, "android.media.effect.effects.PosterizeEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 231
    goto/16 :goto_1e6

    .line 225
    :pswitch_de
    const-string v1, "android.media.effect.effects.NegativeEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 226
    goto/16 :goto_1e6

    .line 222
    :pswitch_e8
    const-string v1, "android.media.effect.effects.LomoishEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 223
    goto/16 :goto_1e6

    .line 219
    :pswitch_f2
    const-string v1, "android.media.effect.effects.GrayscaleEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 220
    goto/16 :goto_1e6

    .line 215
    :pswitch_fc
    const-string v1, "android.media.effect.effects.GrainEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 216
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    goto/16 :goto_1e6

    .line 211
    :pswitch_10f
    invoke-virtual {v0, v3}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 212
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "vertical"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    goto/16 :goto_1e6

    .line 207
    :pswitch_120
    invoke-virtual {v0, v3}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 208
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "horizontal"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    goto/16 :goto_1e6

    .line 203
    :pswitch_131
    const-string v1, "android.media.effect.effects.FisheyeEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 204
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    goto/16 :goto_1e6

    .line 199
    :pswitch_142
    const-string v1, "android.media.effect.effects.FillLightEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 200
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    goto/16 :goto_1e6

    .line 194
    :pswitch_156
    const-string v1, "android.media.effect.effects.DuotoneEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 195
    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "first_color"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    const v2, -0xbbbbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "second_color"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    goto :goto_1e6

    .line 191
    :pswitch_178
    const-string v1, "android.media.effect.effects.DocumentaryEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 192
    goto :goto_1e6

    .line 188
    :pswitch_181
    const-string v1, "android.media.effect.effects.CrossProcessEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 189
    goto :goto_1e6

    .line 184
    :pswitch_18a
    const-string v1, "android.media.effect.effects.ContrastEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 185
    const v2, 0x3fb33333    # 1.4f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "contrast"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    goto :goto_1e6

    .line 180
    :pswitch_19f
    const-string v1, "android.media.effect.effects.BrightnessEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 181
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "brightness"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    goto :goto_1e6

    .line 175
    :pswitch_1b3
    const-string v1, "android.media.effect.effects.BlackWhiteEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 176
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "black"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    const v2, 0x3f333333    # 0.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "white"

    invoke-virtual {v1, v3, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    goto :goto_1e6

    .line 171
    :pswitch_1d6
    const-string v1, "android.media.effect.effects.AutoFixEffect"

    invoke-virtual {v0, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffect:Landroid/media/effect/Effect;

    .line 172
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    nop

    .line 260
    :goto_1e6
    return-void

    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_1d6
        :pswitch_1b3
        :pswitch_19f
        :pswitch_18a
        :pswitch_181
        :pswitch_178
        :pswitch_156
        :pswitch_142
        :pswitch_131
        :pswitch_120
        :pswitch_10f
        :pswitch_fc
        :pswitch_f2
        :pswitch_e8
        :pswitch_de
        :pswitch_5d
        :pswitch_d4
        :pswitch_bf
        :pswitch_ae
        :pswitch_a4
        :pswitch_9a
        :pswitch_86
        :pswitch_70
        :pswitch_5f
    .end packed-switch
.end method

.method private loadTextures()V
    .registers 5

    .line 138
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 141
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_31

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mImageWidth:I

    .line 143
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mImageHeight:I

    .line 144
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    iget v3, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mImageWidth:I

    invoke-virtual {v1, v3, v0}, Lja/burhanrashid52/photoeditor/TextureRenderer;->updateTextureSize(II)V

    .line 147
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 148
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 151
    invoke-static {}, Lja/burhanrashid52/photoeditor/GLToolbox;->initTexParams()V

    .line 153
    :cond_31
    return-void
.end method

.method private renderResult()V
    .registers 4

    .line 267
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCurrentEffect:Lja/burhanrashid52/photoeditor/PhotoFilter;

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    if-eqz v0, :cond_b

    goto :goto_16

    .line 272
    :cond_b
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/TextureRenderer;->renderTexture(I)V

    goto :goto_20

    .line 269
    :cond_16
    :goto_16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTextures:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lja/burhanrashid52/photoeditor/TextureRenderer;->renderTexture(I)V

    .line 274
    :goto_20
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 90
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mInitialized:Z

    if-nez v0, :cond_15

    .line 92
    invoke-static {}, Landroid/media/effect/EffectContext;->createWithCurrentGlContext()Landroid/media/effect/EffectContext;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 93
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    invoke-virtual {v0}, Lja/burhanrashid52/photoeditor/TextureRenderer;->init()V

    .line 94
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->loadTextures()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mInitialized:Z

    .line 97
    :cond_15
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCurrentEffect:Lja/burhanrashid52/photoeditor/PhotoFilter;

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    if-eqz v0, :cond_25

    .line 99
    :cond_1f
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->initEffect()V

    .line 100
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->applyEffect()V

    .line 102
    :cond_25
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->renderResult()V

    .line 103
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->isSaveImage:Z

    if-eqz v0, :cond_5e

    .line 104
    invoke-static {p0, p1}, Lja/burhanrashid52/photoeditor/BitmapUtil;->createBitmapFromGLSurface(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "mFilterBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageFilterView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->isSaveImage:Z

    .line 107
    iget-object v1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mOnSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    if-eqz v1, :cond_5e

    .line 108
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lja/burhanrashid52/photoeditor/ImageFilterView$1;

    invoke-direct {v2, p0, v0}, Lja/burhanrashid52/photoeditor/ImageFilterView$1;-><init>(Lja/burhanrashid52/photoeditor/ImageFilterView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .end local v0    # "mFilterBitmap":Landroid/graphics/Bitmap;
    :cond_5e
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 82
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mTexRenderer:Lja/burhanrashid52/photoeditor/TextureRenderer;

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {v0, p2, p3}, Lja/burhanrashid52/photoeditor/TextureRenderer;->updateViewSize(II)V

    .line 85
    :cond_7
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 78
    return-void
.end method

.method saveBitmap(Lja/burhanrashid52/photoeditor/OnSaveBitmap;)V
    .registers 3
    .param p1, "onSaveBitmap"    # Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    .line 131
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mOnSaveBitmap:Lja/burhanrashid52/photoeditor/OnSaveBitmap;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->isSaveImage:Z

    .line 133
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->requestRender()V

    .line 134
    return-void
.end method

.method setFilterEffect(Lja/burhanrashid52/photoeditor/CustomEffect;)V
    .registers 2
    .param p1, "customEffect"    # Lja/burhanrashid52/photoeditor/CustomEffect;

    .line 125
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    .line 126
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->requestRender()V

    .line 127
    return-void
.end method

.method setFilterEffect(Lja/burhanrashid52/photoeditor/PhotoFilter;)V
    .registers 3
    .param p1, "effect"    # Lja/burhanrashid52/photoeditor/PhotoFilter;

    .line 119
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCurrentEffect:Lja/burhanrashid52/photoeditor/PhotoFilter;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mCustomEffect:Lja/burhanrashid52/photoeditor/CustomEffect;

    .line 121
    invoke-virtual {p0}, Lja/burhanrashid52/photoeditor/ImageFilterView;->requestRender()V

    .line 122
    return-void
.end method

.method setSourceBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .line 71
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/ImageFilterView;->mInitialized:Z

    .line 73
    return-void
.end method
