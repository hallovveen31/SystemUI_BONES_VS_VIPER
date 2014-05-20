.class public Lcom/android/systemui/statusbar/StatusBarFlag;
.super Ljava/lang/Object;
.source "StatusBarFlag.java"


# static fields
.field public static final ASIA_ROGERS_TELUS_PROJECTS:Z

.field public static final CMCC_PROJECT:Z

.field public static final CT_PROJECT:Z

.field public static final CU_PROJECT:Z

.field public static final DUAL_SIM_PHONE:Z

.field public static final HK_PROJECT:Z

.field public static final HTC_ATT_ONS:Z

.field public static final HTC_CHINA_SKU:Z

.field public static final HTC_RECENT_APP:Z

.field public static final HTC_WIFI_OFFLOAD:Z

.field public static final HTC_WIFI_ONLY:Z

.field public static final MMR_PROJECT:Z

.field public static final REGION:I

.field public static final ROAMING_PREFERRED_SLOT:Z

.field public static final SHOW_4G_FOR_LTE:Z

.field public static final SKU_ID:I

.field public static final SUPPORT_LTE:Z

.field public static final SUPPORT_MINOR_QS:Z

.field public static final SUPPORT_QS_EXPS_MODE:Z

.field public static supportHWNav:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadSkuID()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadRegion()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->isHtcStyleRecentApp()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadMinorQuickSetting()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadSupportLte()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_LTE:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->show4gForLte()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    const-string v0, "wifi_only"

    invoke-static {v0, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    const-string v0, "persist.wifi.offload"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x26

    if-ne v0, v3, :cond_7

    :cond_2
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->ASIA_ROGERS_TELUS_PROJECTS:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x46

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HK_PROJECT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->isSupportRoamingPreferredSlot()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    :goto_a
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_QS_EXPS_MODE:Z

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v2

    goto :goto_9

    :cond_d
    move v1, v2

    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHtcStyleRecentApp()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "support_HtcStyleRecentApp"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportRoamingPreferredSlot()Z
    .locals 5

    const/4 v0, 0x0

    const-string v2, "Phone"

    invoke-static {v2}, Lcom/android/systemui/CustomizationUtil;->getReaderByApp(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dualSimDataRoamingPreferredSlot"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "StatusBarFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualSimDataRoamingPreferredSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadMinorQuickSetting()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "support_minor_quicksettings"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "StatusBarFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "support_minor_quicksettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static loadRegion()I
    .locals 4

    const-string v1, "region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "StatusBarFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_acc_region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadSkuID()I
    .locals 4

    const-string v1, "sku_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "StatusBarFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_sku_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadSupportLte()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "support_lte"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "StatusBarFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "support_lte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static show4gForLte()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "show_4g_for_lte"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "StatusBarFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show_4g_for_lte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
