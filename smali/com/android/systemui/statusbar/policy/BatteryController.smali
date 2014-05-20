.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private batteryObserver:Landroid/database/ContentObserver;

.field private batteryTextVisible:Z

.field private handler:Landroid/os/Handler;

.field private icon:I

.field private level:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private plugged:Z

.field private queryMode:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.htc.permission.APP_PLATFORM"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->startBatteryObserve()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryTextVisible(Z)V

    return-void
.end method

.method private broadcastBatteryIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "battery"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "level"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "StatusBar.BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIconResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startBatteryObserve()V
    .locals 4

    const-string v1, "StatusBar.BatteryController"

    const-string v2, "batteryObserver.startObserve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v1, "show_status_bar_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0
.end method

.method private stateToStringPJ(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NOT_CHARGING"

    goto :goto_0

    :pswitch_1
    const-string v0, "CHARGING"

    goto :goto_0

    :pswitch_2
    const-string v0, "CHARGING_FULL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateBatteryTextVisible(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->batteryTextVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    const-string v10, "status"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    const v10, 0x7f0202c8

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const v10, 0x7f0202da

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    :cond_0
    :goto_1
    const-string v10, "power_jacket_exist"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "power_jacket_status"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v10, "unsupport_charger"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    const v10, 0x7f0202ee

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    :cond_1
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const-string v10, "StatusBar.BatteryController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " unsupport:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " plugged:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pj_exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pj_status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/BatteryController;->stateToStringPJ(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    :cond_5
    const v10, 0x7f0202c8

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    goto/16 :goto_1

    :cond_6
    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const v10, 0x7f020306

    iput v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->icon:I

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0018

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->level:I

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->plugged:Z

    invoke-interface {v3, v10, v11}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_4

    :cond_9
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->broadcastBatteryIntent()V

    :cond_a
    :goto_5
    return-void

    :cond_b
    const-string v10, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->broadcastBatteryIntent()V

    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const-string v10, "StatusBar.BatteryController"

    const-string v11, "onReceive:com.htc.systemui.UI_QUERY_START"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    const-string v10, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->queryMode:Z

    sget-boolean v10, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const-string v10, "StatusBar.BatteryController"

    const-string v11, "onReceive:com.htc.systemui.UI_QUERY_END"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
