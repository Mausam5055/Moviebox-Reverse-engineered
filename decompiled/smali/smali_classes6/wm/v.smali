.class public final Lwm/v;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/ScrollView;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Lcom/transsion/member/view/MemberBasicView;

.field public final e:Lcom/transsion/member/view/MemberProView;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/transsion/member/view/MemberBasicView;Lcom/transsion/member/view/MemberProView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwm/v;->a:Landroid/widget/ScrollView;

    iput-object p2, p0, Lwm/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lwm/v;->c:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lwm/v;->d:Lcom/transsion/member/view/MemberBasicView;

    iput-object p5, p0, Lwm/v;->e:Lcom/transsion/member/view/MemberProView;

    iput-object p6, p0, Lwm/v;->f:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lwm/v;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lwm/v;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lwm/v;->i:Landroid/widget/TextView;

    iput-object p10, p0, Lwm/v;->j:Landroid/widget/TextView;

    iput-object p11, p0, Lwm/v;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lwm/v;->l:Landroid/widget/TextView;

    iput-object p13, p0, Lwm/v;->m:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lwm/v;
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/member/R$id;->iv_rights_list:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/member/R$id;->layout_feedback:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/member/R$id;->layout_premium_basic:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/member/view/MemberBasicView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/member/R$id;->layout_premium_pro:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/transsion/member/view/MemberProView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/member/R$id;->layout_user_basic_status:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/member/R$id;->ll_feature_rights:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_agreement_content:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_agreement_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_basic_renew:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_feedback:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/member/R$id;->tv_promo_code:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/member/R$id;->view_feedback_divider:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    new-instance v1, Lwm/v;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lwm/v;-><init>(Landroid/widget/ScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/transsion/member/view/MemberBasicView;Lcom/transsion/member/view/MemberProView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwm/v;
    .locals 2

    sget v0, Lcom/transsion/member/R$layout;->view_premium_content:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lwm/v;->a(Landroid/view/View;)Lwm/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lwm/v;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lwm/v;->b()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method
