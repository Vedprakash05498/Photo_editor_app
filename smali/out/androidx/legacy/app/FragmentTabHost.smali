.class public Landroidx/legacy/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/legacy/app/FragmentTabHost$SavedState;,
        Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/legacy/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/legacy/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0, p1, v0}, Landroidx/legacy/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 140
    invoke-direct {p0, p1, p2}, Landroidx/legacy/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 7
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "newTab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 367
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 368
    .local v2, "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 369
    move-object v0, v2

    .line 366
    .end local v2    # "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 372
    .end local v1    # "i":I
    :cond_1e
    if-eqz v0, :cond_63

    .line 375
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_62

    .line 376
    if-nez p2, :cond_2c

    .line 377
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 379
    :cond_2c
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eqz v1, :cond_3b

    .line 380
    iget-object v1, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3b

    .line 381
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 384
    :cond_3b
    if-eqz v0, :cond_60

    .line 385
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_5b

    .line 386
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 386
    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 388
    iget v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v3, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_60

    .line 390
    :cond_5b
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 394
    :cond_60
    :goto_60
    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 396
    :cond_62
    return-object p2

    .line 373
    :cond_63
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tab known for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw v1

    :goto_7b
    goto :goto_7a
.end method

.method private ensureContent()V
    .registers 4

    .line 223
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2a

    .line 224
    iget v0, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 225
    if-eqz v0, :cond_11

    goto :goto_2a

    .line 226
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2a
    :goto_2a
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 156
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroidx/legacy/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 163
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    .local v4, "fl":Landroid/widget/FrameLayout;
    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 171
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    iput-object v5, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 174
    iget v6, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 175
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_5b
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 247
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroidx/legacy/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 251
    .local v1, "info":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-boolean v2, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    if-eqz v2, :cond_39

    .line 255
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 256
    iget-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_39

    iget-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_39

    .line 257
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 258
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 259
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 263
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_39
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 265
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 275
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 281
    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 282
    .local v3, "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 283
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_47

    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_47

    .line 284
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 288
    iput-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    goto :goto_47

    .line 292
    :cond_3a
    if-nez v1, :cond_42

    .line 293
    iget-object v4, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 295
    :cond_42
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 280
    .end local v3    # "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 302
    .end local v2    # "i":I
    :cond_4a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    .line 303
    invoke-direct {p0, v0, v1}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_5b

    .line 305
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 306
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 308
    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    .line 318
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    instance-of v0, p1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    .line 339
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    return-void

    .line 342
    :cond_8
    move-object v0, p1

    check-cast v0, Landroidx/legacy/app/FragmentTabHost$SavedState;

    .line 343
    .local v0, "ss":Landroidx/legacy/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroidx/legacy/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 327
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/legacy/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 328
    .local v1, "ss":Landroidx/legacy/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 329
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    iget-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_e

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 355
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_e

    .line 356
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 359
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_e
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_15

    .line 360
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 362
    :cond_15
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 239
    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 196
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 197
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 199
    invoke-direct {p0}, Landroidx/legacy/app/FragmentTabHost;->ensureContent()V

    .line 200
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .param p3, "containerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 208
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 209
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 211
    iput p3, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    .line 212
    invoke-direct {p0}, Landroidx/legacy/app/FragmentTabHost;->ensureContent()V

    .line 213
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 217
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 218
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->setId(I)V

    .line 220
    :cond_21
    return-void
.end method
