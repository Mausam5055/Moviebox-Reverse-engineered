.class public final Lrq/m;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final c:Lcom/tn/lib/view/CornerTextView;

.field public final d:Landroid/view/View;

.field public final e:Lcom/transsnet/downloader/widget/DownloadView;

.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/view/CornerTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq/m;->a:Landroid/view/View;

    iput-object p2, p0, Lrq/m;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lrq/m;->c:Lcom/tn/lib/view/CornerTextView;

    iput-object p4, p0, Lrq/m;->d:Landroid/view/View;

    iput-object p5, p0, Lrq/m;->e:Lcom/transsnet/downloader/widget/DownloadView;

    iput-object p6, p0, Lrq/m;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p7, p0, Lrq/m;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lrq/m;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p9, p0, Lrq/m;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p10, p0, Lrq/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lrq/m;
    .locals 13

    sget v0, Lcom/transsion/search/R$id;->ivCover:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/search/R$id;->ivSearchCorner:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/tn/lib/view/CornerTextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/search/R$id;->line:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/search/R$id;->llDownload:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsnet/downloader/widget/DownloadView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/search/R$id;->rvSeasons:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/search/R$id;->tagContentLL:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/search/R$id;->tvSubject:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/search/R$id;->tvSubjectScore:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/search/R$id;->tvSubjectYear:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    new-instance v0, Lrq/m;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lrq/m;-><init>(Landroid/view/View;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/view/CornerTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrq/m;->a:Landroid/view/View;

    return-object v0
.end method
