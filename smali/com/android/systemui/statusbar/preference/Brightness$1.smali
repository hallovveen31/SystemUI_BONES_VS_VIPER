.class Lcom/android/systemui/statusbar/preference/Brightness$1;
.super Landroid/database/ContentObserver;
.source "Brightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Brightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Brightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Brightness;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    #calls: Lcom/android/systemui/statusbar/preference/Brightness;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Brightness;->access$0(Lcom/android/systemui/statusbar/preference/Brightness;)V

    return-void
.end method
