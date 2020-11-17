.class public Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "TextEditorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;
    }
.end annotation


# static fields
.field public static final EXTRA_COLOR_CODE:Ljava/lang/String; = "extra_color_code"

.field public static final EXTRA_INPUT_TEXT:Ljava/lang/String; = "extra_input_text"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddTextDoneTextView:Landroid/widget/TextView;

.field private mAddTextEditText:Landroid/widget/EditText;

.field private mColorCode:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mTextEditor:Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    .line 27
    iget v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mColorCode:I

    return v0
.end method

.method static synthetic access$002(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mColorCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    .line 27
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    .line 27
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    .line 27
    iget-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mTextEditor:Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;

    return-object v0
.end method

.method public static show(Landroidx/appcompat/app/AppCompatActivity;)Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    .registers 3
    .param p0, "appCompatActivity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    nop

    .line 59
    const v0, 0x7f0600d6

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 58
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->show(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    .registers 7
    .param p0, "appCompatActivity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p1, "inputText"    # Ljava/lang/String;
    .param p2, "colorCode"    # I

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "extra_input_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "extra_color_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    new-instance v1, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;

    invoke-direct {v1}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;-><init>()V

    .line 51
    .local v1, "fragment":Lcom/yourdomain/photoeditor/TextEditorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    const v0, 0x7f0d001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .registers 7

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 65
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 67
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1f

    .line 68
    const/4 v1, -0x1

    .line 69
    .local v1, "width":I
    const/4 v2, -0x1

    .line 70
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_1f
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextEditText:Landroid/widget/EditText;

    .line 85
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 86
    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextDoneTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .local v0, "addTextColorPickerRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 91
    .local v1, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 93
    new-instance v2, Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "colorPickerAdapter":Lcom/yourdomain/photoeditor/ColorPickerAdapter;
    new-instance v4, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$1;-><init>(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)V

    invoke-virtual {v2, v4}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->setOnColorPickerClickListener(Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;)V

    .line 102
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v4, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "extra_input_text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_color_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mColorCode:I

    .line 105
    iget-object v5, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 106
    iget-object v4, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 109
    iget-object v3, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mAddTextDoneTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/yourdomain/photoeditor/TextEditorDialogFragment$2;-><init>(Lcom/yourdomain/photoeditor/TextEditorDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public setOnTextEditorListener(Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;)V
    .registers 2
    .param p1, "textEditor"    # Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;

    .line 126
    iput-object p1, p0, Lcom/yourdomain/photoeditor/TextEditorDialogFragment;->mTextEditor:Lcom/yourdomain/photoeditor/TextEditorDialogFragment$TextEditor;

    .line 127
    return-void
.end method
