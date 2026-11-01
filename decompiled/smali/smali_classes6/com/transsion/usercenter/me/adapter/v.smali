.class public final synthetic Lcom/transsion/usercenter/me/adapter/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/memberapi/MemberInfo;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Lcom/transsion/usercenter/me/adapter/x;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/v;->a:Lcom/transsion/memberapi/MemberInfo;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/v;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/v;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/transsion/usercenter/me/adapter/v;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/usercenter/me/adapter/v;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/transsion/usercenter/me/adapter/v;->f:Lcom/transsion/usercenter/me/adapter/x;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/v;->a:Lcom/transsion/memberapi/MemberInfo;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/v;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/v;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/usercenter/me/adapter/v;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/usercenter/me/adapter/v;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/usercenter/me/adapter/v;->f:Lcom/transsion/usercenter/me/adapter/x;

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Lcom/transsion/usercenter/me/adapter/x;->y(Lcom/transsion/memberapi/MemberInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/usercenter/me/adapter/x;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
