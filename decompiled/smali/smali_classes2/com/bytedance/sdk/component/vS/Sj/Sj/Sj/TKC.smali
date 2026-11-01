.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v1
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    return-object p6

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object p6
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
