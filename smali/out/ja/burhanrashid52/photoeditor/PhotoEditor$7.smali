.class synthetic Lja/burhanrashid52/photoeditor/PhotoEditor$7;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ja$burhanrashid52$photoeditor$ViewType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 323
    invoke-static {}, Lja/burhanrashid52/photoeditor/ViewType;->values()[Lja/burhanrashid52/photoeditor/ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lja/burhanrashid52/photoeditor/PhotoEditor$7;->$SwitchMap$ja$burhanrashid52$photoeditor$ViewType:[I

    :try_start_9
    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->TEXT:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/ViewType;->ordinal()I

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
    sget-object v0, Lja/burhanrashid52/photoeditor/PhotoEditor$7;->$SwitchMap$ja$burhanrashid52$photoeditor$ViewType:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/ViewType;->ordinal()I

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
    sget-object v0, Lja/burhanrashid52/photoeditor/PhotoEditor$7;->$SwitchMap$ja$burhanrashid52$photoeditor$ViewType:[I

    sget-object v1, Lja/burhanrashid52/photoeditor/ViewType;->EMOJI:Lja/burhanrashid52/photoeditor/ViewType;

    invoke-virtual {v1}, Lja/burhanrashid52/photoeditor/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    return-void
.end method