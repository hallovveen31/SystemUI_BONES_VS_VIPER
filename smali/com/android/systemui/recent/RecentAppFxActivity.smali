.class public Lcom/android/systemui/recent/RecentAppFxActivity;
.super Landroid/app/Activity;
.source "RecentAppFxActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;
.implements Lcom/android/systemui/recent/RecentsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;,
        Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field final NUM_PANEL:I

.field private final WAS_SHOWING:Ljava/lang/String;

.field private actionClearAll:Lcom/htc/widget/ActionBarItemView;

.field private actionContainer:Lcom/htc/widget/ActionBarContainer;

.field private actionRunningMem:Lcom/htc/widget/ActionBarItemView;

.field private actionText:Lcom/htc/widget/ActionBarText;

.field private am:Landroid/app/ActivityManager;

.field private clearWindowFlag:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isAdapterBound:Z

.field private isAppTransitionEnd:Z

.field private isStartActivityExit:Z

.field private mActionBarHeight:I

.field mContext:Landroid/content/Context;

.field private mGridViewPaddingBottom:I

.field private mGridViewPaddingLeft:I

.field private mGridViewPaddingRight:I

.field private mGridViewPaddingTop:I

.field private mIsCurrentOnRecent:Z

.field private mIsTextAnimNeeded:Z

.field private mNoRecentView:Landroid/view/View;

.field private mOrientation:I

.field private mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

.field private mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mWasShowing:Z

.field private phoneWindow:Landroid/view/Window;

.field private textAnimation:Ljava/lang/Runnable;

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "was_showing"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->WAS_SHOWING:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->NUM_PANEL:I

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAppTransitionEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iput v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$1;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$2;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentAppFxActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recent/RecentAppFxActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentAppFxActivity;->updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentAppFxActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->clearAllItems()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private clearAllItems()V
    .locals 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v11, "RecentApps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearAllItems childCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v11, v1, -0x1

    if-ne v3, v11, :cond_1

    move v4, v9

    :goto_2
    const-string v11, "scaleX"

    new-array v12, v14, [F

    fill-array-data v12, :array_0

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v11, "scaleY"

    new-array v12, v14, [F

    fill-array-data v12, :array_1

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v11, "alpha"

    new-array v12, v14, [F

    fill-array-data v12, :array_2

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v11, v10

    aput-object v7, v11, v9

    aput-object v5, v11, v14

    invoke-static {v8, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v11, 0xdc

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/android/systemui/recent/RecentAppFxActivity$5;

    invoke-direct {v11, p0, v8, v4, v1}, Lcom/android/systemui/recent/RecentAppFxActivity$5;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;ZI)V

    invoke-virtual {v0, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-int/lit8 v11, v3, 0x5

    rsub-int/lit8 v11, v11, 0x32

    add-int/2addr v2, v11

    int-to-long v11, v2

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 v11, 0x3f80

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v4, v10

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dismissAndGoBack()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    const-string v3, "RecentApps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Back Pressed - id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->findViewForTask(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->handleOnClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private findViewForTask(I)Landroid/view/View;
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v4, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v4, v4, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v4, p1, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FxRecentTasksLoader;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private releaseHWTextureCache()V
    .locals 8

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v4, 0x3c

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    sget-boolean v4, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "RecentApps.Perf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseHWTextureCache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "RecentApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!releaseHWTextureCache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 7

    const/4 v6, 0x0

    sget-object v3, Lcom/android/systemui/R$styleable;->RecentStylable:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v3, Lcom/htc/widget/ActionBarText;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v4, 0x7f0a00f5

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    new-instance v3, Lcom/htc/widget/ActionBarItemView;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    const v4, 0x7f020121

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    new-instance v4, Lcom/android/systemui/recent/RecentAppFxActivity$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$3;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/htc/widget/ActionBarItemView;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    new-instance v4, Lcom/android/systemui/recent/RecentAppFxActivity$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$4;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/htc/util/ActionBarUtil;->getActionBarHeight(Landroid/content/Context;Z)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    return-void
.end method

.method private setupMeasurement()V
    .locals 11

    const/4 v10, 0x0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    sub-int v1, v5, v6

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    mul-int/lit8 v5, v5, 0x3

    sub-int v5, v1, v5

    div-int/lit8 v4, v5, 0x4

    iput v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    :goto_0
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentsGridView;

    iput-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iget v8, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iget v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recent/RecentsGridView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x2050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    iput v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingRight:I

    iput v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    mul-int/lit8 v5, v5, 0x3

    sub-int v5, v1, v5

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mGridViewPaddingBottom:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    goto :goto_0
.end method

.method private updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object v4, p2

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-le v4, v5, :cond_2

    const/high16 v4, 0x42b4

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    int-to-float v5, v4

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    :goto_2
    div-float v2, v5, v4

    iget v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    int-to-float v5, v4

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_3
    div-float v3, v5, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    const/high16 v4, -0x3d4c

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v2}, Lcom/android/systemui/recent/FxRecentTasksLoader;->cancelLoadingThumbnails()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/ScaleLaunchView;

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v2, v12, [I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-eqz v7, :cond_0

    iput-boolean v10, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    sget-boolean v7, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "RecentApps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "click task : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v9}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v2, v11

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailWidth:I

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->right:I

    aget v2, v2, v10

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->thumbnailHeight:I

    add-int/2addr v2, v7

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v7, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v7

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    new-instance v2, Lcom/android/systemui/recent/RecentAppFxActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recent/RecentAppFxActivity$7;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V

    iget-object v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v8, 0x0

    invoke-virtual {v7, v12, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v7, v7, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v7, v7, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v8, "com.htc."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v7}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v6, v2}, Lcom/android/systemui/recent/ScaleLaunchView;->startLaunchAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-ne v0, v10, :cond_0

    const-string v0, "RecentApps.Perf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v1, v1, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentApps"

    const-string v1, "handleSwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-nez v0, :cond_2

    const-string v0, "RecentApps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to find activity description for swiped task; view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    sget-boolean v2, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSwipe delete item index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recent/RecentsGridView;->setDelPositionsList(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a007c

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->sendAccessibilityEvent(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->dismissAndGoBack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SystemUI][RecentApp_Launch_Start]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ms][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentApps"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/systemui/recent/FxRecentTasksLoader;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/FxRecentTasksLoader;->setRecentTaskListener(Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;)V

    new-instance v0, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->setupActionBar()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->setupMeasurement()V

    if-eqz p1, :cond_1

    const-string v0, "was_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsGridView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->clearRecentTasksList()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->dismissAndGoBack()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isStartActivityExit:Z

    if-eqz v0, :cond_0

    const v0, 0x7f05000b

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentAppFxActivity;->releaseHWTextureCache()V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v9, 0x2

    invoke-virtual {v0, v9, v10}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/systemui/recent/RecentAppFxActivity;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    const-string v6, "RecentApps.Perf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshRecentTasksList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTasksLoader:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/FxRecentTasksLoader;->isCurrenOnRecents()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsCurrentOnRecent:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mWasShowing:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    const-string v6, "RecentApps"

    const-string v7, "!!!!!recent task null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recent/RecentsGridView;->setNoRecentTask(Z)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mActionBarHeight:I

    invoke-virtual {v6, v8, v9, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    sget-boolean v6, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-ne v6, v7, :cond_2

    const-string v6, "RecentApps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInAllCapsLocale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mNoRecentView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0007

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-gt v5, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsGridView;->setAllThumbnailShowed()V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z

    if-eqz v6, :cond_5

    if-ne v5, v7, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;

    const-wide/16 v9, 0xfa

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {v0, v8}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    const-string v6, "AutoTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SystemUI][RecentApp_Launch_Finish]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][ms][FINISH]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-boolean v7, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->isAdapterBound:Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f0e

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v6, v9, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "was_showing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    monitor-exit p1

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/lit8 v1, v4, -0x1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v4, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/RecentAppFxActivity;->updateThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->playAlphaAnimate(Landroid/view/View;Z)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public playAlphaAnimate(Landroid/view/View;Z)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/recent/RecentAppFxActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RecentApps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAlphaAnimate() view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLastTask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recent/RecentAppFxActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recent/RecentAppFxActivity$6;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
