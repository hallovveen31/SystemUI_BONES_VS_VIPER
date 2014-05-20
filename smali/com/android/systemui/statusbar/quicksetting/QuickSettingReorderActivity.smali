.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;
.super Landroid/app/Activity;
.source "QuickSettingReorderActivity.java"


# static fields
.field private static final QS_DEFAULT_ALL:[I

.field private static qs_available:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final TAG_DRAG:Ljava/lang/String;

.field private actionExt:Lcom/htc/widget/ActionBarExt;

.field private actionText:Lcom/htc/widget/ActionBarText;

.field private footerCancel1:Lcom/htc/widget/HtcFooterButton;

.field private footerCancel2:Lcom/htc/widget/HtcFooterButton;

.field private footerCancelListener:Landroid/view/View$OnClickListener;

.field private footerDone:Lcom/htc/widget/HtcFooterButton;

.field private footerDoneListener:Landroid/view/View$OnClickListener;

.field private htcFontscale:F

.field private htcThemeID:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field private mToastRunnable:Ljava/lang/Runnable;

.field private orientation:I

.field private qs_combine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qs_invisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qs_visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recreateRunnable:Ljava/lang/Runnable;

.field private reorderAdapter:Landroid/widget/BaseAdapter;

.field private reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private reorderList:Lcom/htc/widget/HtcReorderListView;

.field private separatorIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->QS_DEFAULT_ALL:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "QuickSettingReorder"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->TAG:Ljava/lang/String;

    const-string v0, "QuickSettingReorder.DRAG"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->TAG_DRAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private refreshAllContentList()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "QuickSettingReorder"

    const-string v12, "---------------------------------------------------------------------------------------"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getQSAvailableList()[I

    move-result-object v11

    sput-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSAvailable(acc):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v11, v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "quick_setting_items_order"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    const/4 v5, 0x0

    array-length v8, v0

    :goto_0
    if-ge v5, v8, :cond_1

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    aget-object v12, v0, v5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!convert visible content list fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSVisible(convert):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v11, :cond_8

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v11, v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "quick_setting_items_order_invisible"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    const/4 v5, 0x0

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v8, v11

    :goto_2
    if-ge v5, v8, :cond_4

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v11, v11, v5

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->validToAddInvisibleList(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    sget-object v12, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v12, v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    const-string v11, "QuickSettingReorder"

    const-string v12, "refreshQSInvisible(save)"

    const-string v13, "quick_setting_items_order_invisible"

    iget-object v14, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {p0, v11, v12, v13, v14}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    :goto_3
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSInvisible(convert):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v11, "QuickSettingReorder"

    const-string v12, "---------------------------------------------------------------------------------------"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->verifyQSInvisibleItemList(Z)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_5
    if-ge v5, v8, :cond_9

    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :try_start_1
    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    const/4 v5, 0x0

    array-length v8, v0

    :goto_6
    if-ge v5, v8, :cond_5

    aget-object v11, v0, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->validToAddInvisibleList2(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x1

    goto :goto_7

    :catch_1
    move-exception v3

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!convert invisible content list fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    goto/16 :goto_4

    :cond_9
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8
    if-ge v5, v8, :cond_a

    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v1, v11, v9

    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "combineContentList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_b
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method private refreshReorderList()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAllItemFocusable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "QuickSettingReorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshReorderList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFooterCancelVisible(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFooterContent()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterCancelVisible(I)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private validToAddInvisibleList(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validToAddInvisibleList2(I)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v1, v3

    :goto_1
    if-ge v0, v1, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private verifyQSInvisibleItemList(Z)V
    .locals 9

    const/4 v8, 0x1

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v3, v4

    :goto_1
    if-ge v1, v3, :cond_3

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v0, v4, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq p1, v8, :cond_4

    if-ne v2, v8, :cond_5

    :cond_4
    const-string v4, "QuickSettingReorder"

    const-string v5, "verifyQSInvisibleItemList(save)"

    const-string v6, "quick_setting_items_order_invisible"

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    const-string v4, "QuickSettingReorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyQSInvisibleItemList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v8, :cond_6

    if-ne v2, v8, :cond_0

    :cond_6
    const-string v4, "QuickSettingReorder"

    const-string v5, "---------------------------------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v7, 0x2

    invoke-virtual {v0, v7, v8}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    iput v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    invoke-static {p0, v11}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    invoke-virtual {p0, v7}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v7, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    new-instance v7, Lcom/htc/widget/ActionBarText;

    invoke-direct {v7, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v8, 0x7f0a00e3

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v8, 0x7f0a00e4

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v7}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const v7, 0x7f04000d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {v0, v11}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    const v7, 0x7f070024

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f070023

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f070025

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f070026

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcReorderListView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const-string v7, "QuickSettingReorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") scale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " theme:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "quick_setting_items_refresh"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    return-void
.end method

.method public onResume()V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    invoke-static {p0, v7}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v7

    if-ne v7, v5, :cond_1

    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recreate.htcFontscale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    if-eq v7, v0, :cond_2

    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recreate.htcThemeID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "quick_setting_items_refresh"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v1, v5

    :goto_1
    if-ne v1, v5, :cond_4

    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "quick_setting_items_refresh"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "QuickSettingReorder"

    const-string v6, "recreate:cause the data already changed under background!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v6, :cond_5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->refreshAllContentList()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->refreshReorderList()V

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterCancelVisible(I)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    if-ne v6, v5, :cond_0

    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resume:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
