.class Lcom/android/systemui/statusbar/phone/QuickLauncher$1;
.super Landroid/os/Handler;
.source "QuickLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
