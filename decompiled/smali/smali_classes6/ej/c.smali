.class public Lej/c;
.super Lcom/bumptech/glide/RequestBuilder;

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method protected A()Lej/c;
    .locals 2

    new-instance v0, Lej/c;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lej/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lej/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public B(Lcom/bumptech/glide/request/RequestListener;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public C(Landroid/graphics/Bitmap;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public D(Landroid/graphics/drawable/Drawable;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public E(Landroid/net/Uri;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public F(Ljava/io/File;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public G(Ljava/lang/Integer;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public H(Ljava/lang/Object;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public I(Ljava/lang/String;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public J(Ljava/net/URL;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public K([B)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public L()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public M(Z)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public N()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public O()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public P()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public Q()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public R(Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public S(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public T(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public U(II)Lej/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public V(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public W(Landroid/graphics/drawable/Drawable;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public X(Lcom/bumptech/glide/Priority;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public Y(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lej/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public Z(Lcom/bumptech/glide/load/Key;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public a0(F)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->a(Lcom/bumptech/glide/request/RequestListener;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->c()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public b0(Z)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public c()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public c0(Landroid/content/res/Resources$Theme;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->e()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->f()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->g()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/c;->i()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->i()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lej/c;->i()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public d0(F)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->j(Ljava/lang/Class;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->k()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->l(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->m()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->n()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->o(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public e()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public e0(Lcom/bumptech/glide/RequestBuilder;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->p(Landroid/graphics/Bitmap$CompressFormat;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->q(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->t(Lcom/bumptech/glide/RequestBuilder;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->u(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->r(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->s(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public f()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public f0(Ljava/util/List;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->v(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->w(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->x()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->y(Lcom/bumptech/glide/load/DecodeFormat;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lej/c;->z(J)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public g()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public final varargs g0([Lcom/bumptech/glide/RequestBuilder;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/c;->A()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public h0(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public i()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public i0(Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public j(Ljava/lang/Class;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public j0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public k()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public varargs k0([Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public l(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public varargs l0([Lcom/bumptech/glide/load/Transformation;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->B(Lcom/bumptech/glide/request/RequestListener;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->C(Landroid/graphics/Bitmap;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->D(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->E(Landroid/net/Uri;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->F(Ljava/io/File;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->G(Ljava/lang/Integer;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->H(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->I(Ljava/lang/String;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->J(Ljava/net/URL;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->K([B)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->C(Landroid/graphics/Bitmap;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->D(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->E(Landroid/net/Uri;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->F(Ljava/io/File;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->G(Ljava/lang/Integer;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->H(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->I(Ljava/lang/String;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->J(Ljava/net/URL;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->K([B)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->L()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public m()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public m0(Lcom/bumptech/glide/TransitionOptions;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public n()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public n0(Z)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public o(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public o0(Z)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->M(Z)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->N()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->O()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->P()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lej/c;->Q()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->R(Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lej/c;->S(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->T(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lej/c;->U(II)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/graphics/Bitmap$CompressFormat;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->V(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->W(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->X(Lcom/bumptech/glide/Priority;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public q(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public r(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public s(Landroid/graphics/drawable/Drawable;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lej/c;->Y(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->Z(Lcom/bumptech/glide/load/Key;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->a0(F)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->b0(Z)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/bumptech/glide/RequestBuilder;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->c0(Landroid/content/res/Resources$Theme;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->d0(F)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->e0(Lcom/bumptech/glide/RequestBuilder;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->f0(Ljava/util/List;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->g0([Lcom/bumptech/glide/RequestBuilder;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->h0(I)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->i0(Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lej/c;->j0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->k0([Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->l0([Lcom/bumptech/glide/load/Transformation;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->m0(Lcom/bumptech/glide/TransitionOptions;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/Object;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->n0(Z)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lej/c;->o0(Z)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public v(I)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public w(Landroid/graphics/drawable/Drawable;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public x()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public y(Lcom/bumptech/glide/load/DecodeFormat;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public z(J)Lej/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method
