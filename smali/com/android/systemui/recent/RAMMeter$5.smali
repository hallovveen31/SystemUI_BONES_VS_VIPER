.class Lcom/android/systemui/recent/RAMMeter$5;
.super Landroid/database/ContentObserver;
.source "RAMMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RAMMeter;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RAMMeter;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RAMMeter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$5;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter$5;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RAMMeter;->setVisibility()V

    return-void
.end method
