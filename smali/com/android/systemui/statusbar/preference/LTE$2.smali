.class Lcom/android/systemui/statusbar/preference/LTE$2;
.super Ljava/lang/Object;
.source "LTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/LTE;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/LTE;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/LTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/LTE$2;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE$2;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE$2;->this$0:Lcom/android/systemui/statusbar/preference/LTE;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/LTE;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    #calls: Lcom/android/systemui/statusbar/preference/LTE;->setPreferedNetworkMode(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/LTE;->access$2(Lcom/android/systemui/statusbar/preference/LTE;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
