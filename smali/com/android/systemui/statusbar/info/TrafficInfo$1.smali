.class Lcom/android/systemui/statusbar/info/TrafficInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "TrafficInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/info/TrafficInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/TrafficInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/TrafficInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/TrafficInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TrafficInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TrafficInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TrafficInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TrafficInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TrafficInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/TrafficInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/info/TrafficInfo;->setText(Ljava/lang/String;)V

    return-void
.end method
