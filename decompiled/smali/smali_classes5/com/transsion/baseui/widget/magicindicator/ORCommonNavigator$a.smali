.class public final Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-static {v0}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$getMNavigatorHelper$p(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)Lg00/b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-static {v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$getMAdapter$p(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)Lik/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj00/a;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lg00/b;->m(I)V

    iget-object v0, p0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator$a;->a:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-static {v0}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->access$init(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
