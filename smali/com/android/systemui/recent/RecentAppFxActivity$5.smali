.class Lcom/android/systemui/recent/RecentAppFxActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->clearAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

.field final synthetic val$childCount:I

.field final synthetic val$isLast:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$isLast:Z

    iput p4, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$childCount:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$isLast:Z

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$childCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->handleSwipe(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
