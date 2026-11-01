.class public Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    return-void
.end method

.method public static synthetic R(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->d0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->e0(Landroid/view/View;)V

    return-void
.end method

.method private V(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a0(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->i(F)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v5, "#0F1A2F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->i(F)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#6F7682"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private W(J)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const-wide/32 v1, 0x40000000

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p1, p1

    const/high16 p2, 0x4e800000

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private X()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-static {v1, v2, v3, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->category_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategoryIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategoryIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->category:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ratings:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getRatings()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->users:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getUsers()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b0(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->V(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->size:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getSize()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->W(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->V(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->action_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/j;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/k;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->cancel_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->cancel_button_bottom:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->skip_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/l;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/l;-><init>(Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static Y(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;ILcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sput-object p3, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mini_app_info_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "style"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string p1, "MiniApp"

    const-string p2, "Failed to start mini app guide."

    invoke-virtual {p0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->b()V

    const/4 p1, 0x0

    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a0(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private b0(J)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const-wide/16 v1, 0x3e8

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v1, 0xf4240

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p1, p1

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private c0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mini_app_info_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    if-nez v2, :cond_1

    return-void

    :cond_1
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->a:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    const-string v1, "style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->b:I

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->c()V

    const/4 p1, 0x0

    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->a()V

    const/4 p1, 0x0

    sput-object p1, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_mini_app_popup:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->X()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity;->c:Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
