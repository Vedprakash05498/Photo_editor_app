.class public Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EditingToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;,
        Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;,
        Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnItemSelected:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;

.field private mToolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;)V
    .registers 7
    .param p1, "onItemSelected"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mOnItemSelected:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;

    .line 24
    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->BRUSH:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Brush"

    const v4, 0x7f080082

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->TEXT:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Text"

    const v4, 0x7f080093

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->ERASER:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Eraser"

    const v4, 0x7f080085

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->FILTER:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Filter"

    const v4, 0x7f08008e

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->EMOJI:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Emoji"

    const v4, 0x7f080087

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    sget-object v2, Lcom/yourdomain/photoeditor/tools/ToolType;->STICKER:Lcom/yourdomain/photoeditor/tools/ToolType;

    const-string v3, "Sticker"

    const v4, 0x7f080092

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Ljava/lang/String;ILcom/yourdomain/photoeditor/tools/ToolType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method static synthetic access$200(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    .line 17
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;)Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;

    .line 17
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mOnItemSelected:Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$OnItemSelected;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 17
    check-cast p1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->onBindViewHolder(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 59
    iget-object v0, p0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->mToolList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;

    .line 60
    .local v0, "item":Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;
    iget-object v1, p1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->txtTool:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->access$000(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;->imgToolIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;->access$100(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ToolModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    const v1, 0x7f0d005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/tools/EditingToolsAdapter;Landroid/view/View;)V

    return-object v1
.end method
