.class public Lz4/z1;
.super Lz4/e;

# interfaces
.implements Lz4/b2;


# static fields
.field public static a:Lz4/z1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/z1;

    invoke-direct {v0}, Lz4/z1;-><init>()V

    sput-object v0, Lz4/z1;->a:Lz4/z1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz4/e;-><init>()V

    return-void
.end method

.method public static i(Ly4/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object p4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    if-eq v0, v1, :cond_1

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syntax error, expect {, actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ly4/b;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ly4/a;->m()Ly4/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    invoke-virtual {p0}, Ly4/a;->m()Ly4/h;

    move-result-object v1

    invoke-virtual {v1, p3}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v1

    invoke-interface {v0}, Lz4/b2;->b()I

    move-result v3

    invoke-interface {p4, v3}, Ly4/b;->c0(I)V

    invoke-virtual {p0}, Ly4/a;->n()Ly4/g;

    move-result-object v3

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    invoke-interface {p4, v2}, Ly4/b;->c0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    :try_start_1
    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v4, v7, :cond_9

    invoke-interface {p4}, Ly4/b;->x()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p4, v4}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {p4, v7}, Ly4/b;->q(I)V

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result p1

    if-ne p1, v7, :cond_8

    invoke-interface {p4}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".."

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, v3, Ly4/g;->b:Ly4/g;

    iget-object v6, p1, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string p2, "$"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p1, v3

    :goto_2
    iget-object p2, p1, Ly4/g;->b:Ly4/g;

    if-eqz p2, :cond_5

    move-object p1, p2

    goto :goto_2

    :cond_5
    iget-object v6, p1, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance p2, Ly4/a$a;

    invoke-direct {p2, v3, p1}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ly4/a;->i(Ly4/a$a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ly4/a;->E0(I)V

    :goto_3
    invoke-interface {p4, v5}, Ly4/b;->c0(I)V

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result p1

    if-ne p1, v5, :cond_7

    invoke-interface {p4, v2}, Ly4/b;->c0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    return-object v6

    :cond_7
    :try_start_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illegal ref"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal ref, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result p3

    invoke-static {p3}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v7, :cond_b

    sget-object v4, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p4}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p4, v4}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p4, v7}, Ly4/b;->q(I)V

    invoke-interface {p4, v2}, Ly4/b;->c0(I)V

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v5, :cond_a

    invoke-interface {p4}, Ly4/b;->Z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_a
    :try_start_3
    invoke-interface {v0}, Lz4/b2;->b()I

    move-result v4

    invoke-interface {p4, v4}, Ly4/b;->c0(I)V

    :cond_b
    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v7, :cond_c

    instance-of v4, v0, Lz4/o;

    if-eqz v4, :cond_c

    invoke-interface {p4}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4}, Ly4/b;->Z()V

    new-instance v5, Ly4/a;

    invoke-virtual {p0}, Ly4/a;->m()Ly4/h;

    move-result-object v7

    invoke-virtual {p0}, Ly4/a;->s()Ly4/b;

    move-result-object v8

    invoke-interface {v8}, Ly4/b;->r()I

    move-result v8

    invoke-direct {v5, v4, v7, v8}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;I)V

    invoke-virtual {p0}, Ly4/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ly4/a;->C0(Ljava/lang/String;)V

    invoke-interface {v0, v5, p2, v6}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_c
    invoke-interface {v0, p0, p2, v6}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_4
    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_d

    invoke-interface {v1}, Lz4/b2;->b()I

    move-result v5

    invoke-interface {p4, v5}, Ly4/b;->c0(I)V

    invoke-interface {v1, p0, p3, v4}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v4}, Ly4/a;->l(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-interface {v0}, Lz4/b2;->b()I

    move-result v4

    invoke-interface {p4, v4}, Ly4/b;->c0(I)V

    goto/16 :goto_1

    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syntax error, expect :, actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    throw p1
.end method

.method public static j(Ly4/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;
    .locals 11

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "null"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "syntax error, expect {, actual "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->v()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", fieldName "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eq v1, p1, :cond_3

    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual {p0, p1, p3}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    :cond_3
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Ly4/a;->n()Ly4/g;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v2

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_5

    invoke-interface {v0}, Ly4/b;->next()C

    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_5
    const-string v5, "expect \':\' at "

    const/16 v6, 0x3a

    const/16 v7, 0x22

    const/16 v8, 0x10

    if-ne v2, v7, :cond_7

    :try_start_1
    invoke-virtual {p0}, Ly4/a;->v()Ly4/i;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_6

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v9, 0x7d

    if-ne v2, v9, :cond_8

    invoke-interface {v0}, Ly4/b;->next()C

    invoke-interface {v0}, Ly4/b;->v0()V

    invoke-interface {v0, v8}, Ly4/b;->c0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_8
    const-string v9, "syntax error"

    const/16 v10, 0x27

    if-ne v2, v10, :cond_b

    :try_start_2
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Ly4/a;->v()Ly4/i;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Ly4/a;->v()Ly4/i;

    move-result-object v2

    invoke-interface {v0, v2}, Ly4/b;->w(Ly4/i;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_17

    :goto_2
    invoke-interface {v0}, Ly4/b;->next()C

    invoke-interface {v0}, Ly4/b;->u0()V

    invoke-interface {v0}, Ly4/b;->d()C

    invoke-interface {v0}, Ly4/b;->v0()V

    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v6, 0xd

    if-ne v2, v5, :cond_11

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {p4, v5}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Ly4/a;->v()Ly4/i;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ly4/a;->m()Ly4/h;

    move-result-object v5

    const-string v7, "java.util.HashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v9, Ljava/util/HashMap;

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    :try_start_3
    const-string v7, "java.util.LinkedHashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-class v9, Ljava/util/LinkedHashMap;

    goto :goto_3

    :cond_d
    invoke-virtual {v5}, Ly4/h;->x()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_e

    goto :goto_3

    :cond_e
    :try_start_4
    invoke-interface {v0}, Ly4/b;->r()I

    move-result v7

    invoke-virtual {v5, v2, v4, v7}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v9
    :try_end_4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :goto_3
    :try_start_5
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0, v8}, Ly4/b;->c0(I)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v6, :cond_15

    invoke-interface {v0, v8}, Ly4/b;->c0(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_f
    :try_start_6
    invoke-virtual {v5, v9}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    invoke-interface {v0, v8}, Ly4/b;->c0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Ly4/a;->E0(I)V

    if-eqz v1, :cond_10

    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_10

    invoke-virtual {p0}, Ly4/a;->v0()V

    :cond_10
    invoke-interface {p1, p0, v9, p3}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_11
    :try_start_7
    invoke-interface {v0}, Ly4/b;->Z()V

    if-eqz v3, :cond_12

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    :cond_12
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_13

    invoke-interface {v0}, Ly4/b;->Z()V

    move-object v5, v4

    goto :goto_4

    :cond_13
    invoke-virtual {p0, p2, v2}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_4
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Ly4/a;->l(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v5, v2}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v2

    const/16 v5, 0x14

    if-eq v2, v5, :cond_16

    const/16 v5, 0xf

    if-ne v2, v5, :cond_14

    goto :goto_5

    :cond_14
    if-ne v2, v6, :cond_15

    invoke-interface {v0}, Ly4/b;->Z()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_16
    :goto_5
    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_17
    :try_start_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    invoke-virtual {p0, v1}, Ly4/a;->B0(Ly4/g;)V

    throw p1
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public e(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7

    const-class p4, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, p4, :cond_0

    invoke-virtual {p1}, Ly4/a;->q()Lz4/m;

    invoke-virtual {p1}, Ly4/a;->l0()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p4, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {p4}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 p1, 0x10

    invoke-interface {p4, p1}, Ly4/b;->c0(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ly4/b;->r()I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ly4/b;->r()I

    move-result p4

    invoke-virtual {p0, p2, p4}, Lz4/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p4

    :goto_1
    move-object v5, p4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lz4/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p4

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Ly4/a;->n()Ly4/g;

    move-result-object p4

    :try_start_0
    invoke-virtual {p1, p4, v5, p3}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lz4/z1;->h(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p1, p4}, Ly4/a;->B0(Ly4/g;)V

    return-object p2

    :goto_4
    invoke-virtual {p1, p4}, Ly4/a;->B0(Ly4/g;)V

    throw p2
.end method

.method public f(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-virtual {p0, p1, v0}, Lz4/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/reflect/Type;I)Ljava/util/Map;
    .locals 3

    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-object p1

    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p1

    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_e

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_d

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1

    :cond_6
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_7
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_8

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Ljava/util/EnumMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p2, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p2

    :cond_9
    invoke-virtual {p0, v0, p2}, Lz4/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_a
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "unsupport type "

    if-nez v0, :cond_c

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_b
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    :goto_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1

    :cond_e
    :goto_2
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1
.end method

.method protected h(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    :goto_0
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_1

    invoke-static {p1, p4, p2, p3, p5}, Lz4/z1;->j(Ly4/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p4, v0, p2, p3}, Lz4/z1;->i(Ly4/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1, p4, p3}, Ly4/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
