.class Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;
.super Ljava/lang/Object;
.source "EditingToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToolModel"
.end annotation


# instance fields
.field private mToolIcon:I

.field private mToolName:Ljava/lang/String;

.field private mToolType:Lcom/yourdomain/photoeditor/tools/ToolType;

.field final synthetic this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V
    .registers 5
    .param p1, "this$0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;
    .param p2, "toolName"    # Ljava/lang/String;
    .param p3, "toolIcon"    # I
    .param p4, "toolType"    # Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 41
    iput-object p1, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolName:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolIcon:I

    .line 44
    iput-object p4, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolType:Lcom/yourdomain/photoeditor/tools/ToolType;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    .line 36
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)I
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    .line 36
    iget v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolIcon:I

    return v0
.end method

.method static synthetic access$300(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)Lcom/yourdomain/photoeditor/tools/ToolType;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    .line 36
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->mToolType:Lcom/yourdomain/photoeditor/tools/ToolType;

    return-object v0
.end method
