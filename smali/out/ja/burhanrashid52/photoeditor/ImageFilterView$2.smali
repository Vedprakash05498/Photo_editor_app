.class synthetic Lja/burhanrashid52/photoeditor/ImageFilterView$2;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 168
    invoke-static {}, Lja/burhanrashid52/photoeditor/PhotoFilter;->values()[Lja/burhanrashid52/photoeditor/PhotoFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    :try_start_9
    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->AUTO_FIX:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->BLACK_WHITE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->BRIGHTNESS:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->CONTRAST:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->CROSS_PROCESS:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->DOCUMENTARY:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->DUE_TONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->FILL_LIGHT:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->FISH_EYE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->FLIP_HORIZONTAL:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->FLIP_VERTICAL:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->GRAIN:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->GRAY_SCALE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->LOMISH:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    :try_start_c4
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->NEGATIVE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->POSTERIZE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->ROTATE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->SATURATE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_109

    goto :goto_10a

    :catch_109
    move-exception v0

    :goto_10a
    :try_start_10a
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->SEPIA:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_117

    goto :goto_118

    :catch_117
    move-exception v0

    :goto_118
    :try_start_118
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->SHARPEN:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_125

    goto :goto_126

    :catch_125
    move-exception v0

    :goto_126
    :try_start_126
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->TEMPERATURE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_132} :catch_133

    goto :goto_134

    :catch_133
    move-exception v0

    :goto_134
    :try_start_134
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->TINT:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_141

    goto :goto_142

    :catch_141
    move-exception v0

    :goto_142
    :try_start_142
    sget-object v0, Lja/burhanrashid52/photoeditor/ImageFilterView$2;->$SwitchMap$ja$burhanrashid52$photoeditor$PhotoFilter:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/PhotoFilter;->VIGNETTE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/PhotoFilter;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14e} :catch_14f

    goto :goto_150

    :catch_14f
    move-exception v0

    :goto_150
    return-void
.end method
