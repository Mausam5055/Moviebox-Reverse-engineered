.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

.field private final b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

.field private c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Lcom/transsion/usercenter/setting/labelsfeedback/i;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->o(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->p(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->q(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    return-void
.end method

.method private static final o(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->e(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    :cond_0
    return-void
.end method

.method private static final p(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->a(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    :cond_0
    return-void
.end method

.method private static final q(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->k(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Lcom/transsnet/loginapi/bean/Country;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->setCountry(Lcom/transsnet/loginapi/bean/Country;)V

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCountry_s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " +"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g()Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setImagePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->i()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->c(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V

    :cond_0
    return-void
.end method

.method public final l()Lcom/transsion/usercenter/setting/labelsfeedback/i;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    return-object v0
.end method

.method public final m()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    return-object v0
.end method

.method public n(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;I)V
    .locals 2

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->k()Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/e;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/e;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->i()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/f;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/f;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    const-string v0, "0/500"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    move-result-object p2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;

    invoke-direct {v0, p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g()Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/g;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/g;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->j()Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getCountry()Lcom/transsnet/loginapi/bean/Country;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->j(Lcom/transsnet/loginapi/bean/Country;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->j()Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->n(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->r(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    move-result-object p1

    return-object p1
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lfw/g0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/g0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;Lfw/g0;)V

    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    return-object p2
.end method
