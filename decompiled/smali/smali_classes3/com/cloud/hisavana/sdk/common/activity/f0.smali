.class public Lcom/cloud/hisavana/sdk/common/activity/f0;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:F

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:F

.field o:F

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Lcom/cloud/hisavana/sdk/common/activity/f0;
    .locals 19

    move/from16 v0, p0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/f0;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/common/activity/f0;-><init>()V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    const/high16 v0, 0x43f90000    # 498.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    const/high16 v3, 0x435c0000    # 220.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x41d00000    # 26.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x41400000    # 12.0f

    if-ne v0, v2, :cond_1

    const/high16 v0, 0x43dc0000    # 440.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    const/high16 v0, 0x42240000    # 41.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v12, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v14, 0x437a0000    # 250.0f

    const/high16 v15, 0x41b00000    # 22.0f

    if-ne v0, v2, :cond_2

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    const/high16 v0, 0x43830000    # 262.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v10, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v12, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    const/high16 v0, 0x43180000    # 152.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    invoke-static {v13}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x4

    const/high16 v16, 0x42900000    # 72.0f

    const/high16 v13, 0x41900000    # 18.0f

    const/high16 v17, 0x42100000    # 36.0f

    const/high16 v18, 0x41800000    # 16.0f

    if-ne v0, v2, :cond_3

    const/high16 v0, 0x439c0000    # 312.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    const/high16 v0, 0x43a40000    # 328.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v7, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    const/high16 v0, 0x43840000    # 264.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    invoke-static/range {v16 .. v16}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const/high16 v0, 0x430c0000    # 140.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    const/high16 v0, 0x42f80000    # 124.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-static {v13}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    const/high16 v0, 0x42d40000    # 106.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x6

    const/high16 v4, 0x43940000    # 296.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v14, -0x40800000    # -1.0f

    if-ne v0, v2, :cond_5

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    invoke-static/range {v16 .. v16}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v6, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    const/high16 v0, 0x43700000    # 240.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    iput v10, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    :goto_0
    return-object v1

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
