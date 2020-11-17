.class public final enum Lja/burhanrashid52/photoeditor/ViewType;
.super Ljava/lang/Enum;
.source "ViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/burhanrashid52/photoeditor/ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lja/burhanrashid52/photoeditor/ViewType;

.field public static final enum BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

.field public static final enum EMOJI:Lja/burhanrashid52/photoeditor/ViewType;

.field public static final enum IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

.field public static final enum TEXT:Lja/burhanrashid52/photoeditor/ViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 14
    new-instance v0, Lja/burhanrashid52/photoeditor/ViewType;

    const-string v1, "BRUSH_DRAWING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lja/burhanrashid52/photoeditor/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    .line 15
    new-instance v0, Lja/burhanrashid52/photoeditor/ViewType;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lja/burhanrashid52/photoeditor/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/burhanrashid52/photoeditor/ViewType;->TEXT:Lja/burhanrashid52/photoeditor/ViewType;

    .line 16
    new-instance v0, Lja/burhanrashid52/photoeditor/ViewType;

    const-string v1, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lja/burhanrashid52/photoeditor/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/burhanrashid52/photoeditor/ViewType;->IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

    .line 17
    new-instance v0, Lja/burhanrashid52/photoeditor/ViewType;

    const-string v1, "EMOJI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lja/burhanrashid52/photoeditor/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lja/burhanrashid52/photoeditor/ViewType;->EMOJI:Lja/burhanrashid52/photoeditor/ViewType;

    .line 13
    const/4 v1, 0x4

    new-array v1, v1, [Lja/burhanrashid52/photoeditor/ViewType;

    sget-object v6, Lja/burhanrashid52/photoeditor/ViewType;->BRUSH_DRAWING:Lja/burhanrashid52/photoeditor/ViewType;

    aput-object v6, v1, v2

    sget-object v2, Lja/burhanrashid52/photoeditor/ViewType;->TEXT:Lja/burhanrashid52/photoeditor/ViewType;

    aput-object v2, v1, v3

    sget-object v2, Lja/burhanrashid52/photoeditor/ViewType;->IMAGE:Lja/burhanrashid52/photoeditor/ViewType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lja/burhanrashid52/photoeditor/ViewType;->$VALUES:[Lja/burhanrashid52/photoeditor/ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lja/burhanrashid52/photoeditor/ViewType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lja/burhanrashid52/photoeditor/ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lja/burhanrashid52/photoeditor/ViewType;

    return-object v0
.end method

.method public static values()[Lja/burhanrashid52/photoeditor/ViewType;
    .registers 1

    .line 13
    sget-object v0, Lja/burhanrashid52/photoeditor/ViewType;->$VALUES:[Lja/burhanrashid52/photoeditor/ViewType;

    invoke-virtual {v0}, [Lja/burhanrashid52/photoeditor/ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/burhanrashid52/photoeditor/ViewType;

    return-object v0
.end method
