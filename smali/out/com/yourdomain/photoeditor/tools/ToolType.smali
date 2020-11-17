.class public final enum Lcom/yourdomain/photoeditor/tools/ToolType;
.super Ljava/lang/Enum;
.source "ToolType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yourdomain/photoeditor/tools/ToolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum BRUSH:Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum EMOJI:Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum ERASER:Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum FILTER:Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum STICKER:Lcom/yourdomain/photoeditor/tools/ToolType;

.field public static final enum TEXT:Lcom/yourdomain/photoeditor/tools/ToolType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 5
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "BRUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->BRUSH:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 6
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->TEXT:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 7
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "ERASER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->ERASER:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 8
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "FILTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->FILTER:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 9
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "EMOJI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->EMOJI:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 10
    new-instance v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v1, "STICKER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yourdomain/photoeditor/tools/ToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->STICKER:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 4
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/yourdomain/photoeditor/tools/ToolType;

    sget-object v8, Lcom/yourdomain/photoeditor/tools/ToolType;->BRUSH:Lcom/yourdomain/photoeditor/tools/ToolType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->TEXT:Lcom/yourdomain/photoeditor/tools/ToolType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->ERASER:Lcom/yourdomain/photoeditor/tools/ToolType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->FILTER:Lcom/yourdomain/photoeditor/tools/ToolType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->EMOJI:Lcom/yourdomain/photoeditor/tools/ToolType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/yourdomain/photoeditor/tools/ToolType;->$VALUES:[Lcom/yourdomain/photoeditor/tools/ToolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yourdomain/photoeditor/tools/ToolType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yourdomain/photoeditor/tools/ToolType;

    return-object v0
.end method

.method public static values()[Lcom/yourdomain/photoeditor/tools/ToolType;
    .registers 1

    .line 4
    sget-object v0, Lcom/yourdomain/photoeditor/tools/ToolType;->$VALUES:[Lcom/yourdomain/photoeditor/tools/ToolType;

    invoke-virtual {v0}, [Lcom/yourdomain/photoeditor/tools/ToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yourdomain/photoeditor/tools/ToolType;

    return-object v0
.end method
