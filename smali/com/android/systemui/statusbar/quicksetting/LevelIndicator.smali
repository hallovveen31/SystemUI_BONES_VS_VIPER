.class public Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
.super Landroid/view/View;
.source "LevelIndicator.java"


# static fields
.field private static contentSpace:I


# instance fields
.field private contentDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private currentLevel:I

.field private intermediateBound:Landroid/graphics/Rect;

.field private intermediateEnable:Z

.field private maximumLevel:I

.field private spaceDrawable:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#2c2e2f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-lez v8, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    add-int/lit8 v9, v9, -0x1

    sget v10, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    mul-int/2addr v9, v10

    sub-int v0, v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-ne v8, v11, :cond_1

    move v4, v7

    :goto_0
    if-gtz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    div-int v1, v0, v8

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    rem-int v6, v0, v8

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v4, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    add-int v9, v3, v1

    invoke-virtual {v8, v3, v7, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int v8, v3, v1

    sget v9, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    add-int v3, v8, v9

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v4, 0x1

    :goto_3
    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-gt v5, v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    add-int v9, v3, v1

    invoke-virtual {v8, v3, v7, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-ne v8, v11, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    if-ne v5, v8, :cond_5

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    :cond_5
    add-int v8, v3, v1

    sget v9, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    add-int v3, v8, v9

    if-eqz v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-ne v7, v11, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onOverlayColorChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIntermediateEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public setLevel(II)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    iput p2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method
