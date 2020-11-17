.class Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "EditingToolsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    .line 77
    iput-object p1, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;->val$this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->access$400(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;

    move-result-object v0

    iget-object v1, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->access$200(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->access$300(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)Lcom/yourdomain/photoeditor/tools/ToolType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;->onToolSelected(Lcom/yourdomain/photoeditor/tools/ToolType;)V

    .line 81
    return-void
.end method
