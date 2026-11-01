.class public La5/l;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:La5/z0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;La5/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/l;->a:Ljava/lang/Class;

    iput-object p2, p0, La5/l;->b:La5/z0;

    return-void
.end method


# virtual methods
.method public final d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    iget-object p4, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p1}, La5/j1;->p0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    :cond_0
    move-object p5, p2

    check-cast p5, [Ljava/lang/Object;

    array-length v0, p5

    iget-object v1, p1, La5/o0;->r:La5/e1;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p3, v2}, La5/o0;->w(La5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x5b

    :try_start_0
    invoke-virtual {p4, p3}, La5/j1;->b(C)La5/j1;

    :goto_0
    if-ge v2, v0, :cond_5

    if-eqz v2, :cond_1

    const/16 p3, 0x2c

    invoke-virtual {p4, p3}, La5/j1;->b(C)La5/j1;

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_1
    aget-object v5, p5, v2

    if-nez v5, :cond_3

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p3}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p3

    if-eqz p3, :cond_2

    instance-of p3, p2, [Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string p3, ""

    invoke-virtual {p4, p3}, La5/j1;->q0(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p3, "null"

    invoke-virtual {p4, p3}, La5/j1;->d(Ljava/lang/CharSequence;)La5/j1;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object v3, p0, La5/l;->a:Ljava/lang/Class;

    if-ne p3, v3, :cond_4

    iget-object v3, p0, La5/l;->b:La5/z0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 p2, 0x5d

    invoke-virtual {p4, p2}, La5/j1;->b(C)La5/j1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p1, La5/o0;->r:La5/e1;

    return-void

    :goto_3
    iput-object v1, p1, La5/o0;->r:La5/e1;

    throw p2
.end method
