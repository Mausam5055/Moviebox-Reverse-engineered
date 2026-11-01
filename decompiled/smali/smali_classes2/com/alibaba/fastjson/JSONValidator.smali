.class public abstract Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$a;,
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:C

.field protected d:Lcom/alibaba/fastjson/JSONValidator$Type;

.field private e:Ljava/lang/Boolean;

.field protected f:I

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->f:I

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->g:Z

    return-void
.end method

.method private k()Z
    .locals 13

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x75

    const/16 v2, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2a

    const/16 v5, 0x65

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_1e

    if-eq v0, v6, :cond_1e

    const/16 v8, 0x5b

    const/16 v9, 0x5d

    const/16 v10, 0x2c

    if-eq v0, v8, :cond_19

    const/16 v8, 0x66

    const/16 v11, 0x6c

    const/16 v12, 0x7d

    if-eq v0, v8, :cond_12

    const/16 v8, 0x6e

    if-eq v0, v8, :cond_c

    const/16 v8, 0x74

    if-eq v0, v8, :cond_6

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->n(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v12, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_2
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->l()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->k()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v10, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    goto :goto_1

    :cond_4
    if-ne v0, v12, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_5
    return v4

    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v2, 0x72

    if-eq v0, v2, :cond_7

    return v4

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v1, :cond_8

    return v4

    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v5, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->n(C)Z

    move-result v0

    if-nez v0, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_b

    if-eq v0, v12, :cond_b

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    return v4

    :cond_b
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v1, :cond_d

    return v4

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v11, :cond_e

    return v4

    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v11, :cond_f

    return v4

    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->n(C)Z

    move-result v0

    if-nez v0, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v10, :cond_11

    if-eq v0, v9, :cond_11

    if-eq v0, v12, :cond_11

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    return v4

    :cond_11
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_13

    return v4

    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v11, :cond_14

    return v4

    :cond_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_15

    return v4

    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v5, :cond_16

    return v4

    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->n(C)Z

    move-result v0

    if-nez v0, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v10, :cond_18

    if-eq v0, v9, :cond_18

    if-eq v0, v12, :cond_18

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    return v4

    :cond_18
    :goto_4
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v9, :cond_1a

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_1a
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->k()Z

    move-result v0

    if-nez v0, :cond_1b

    return v4

    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v10, :cond_1c

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    goto :goto_5

    :cond_1c
    if-ne v0, v9, :cond_1d

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_1d
    return v4

    :cond_1e
    :pswitch_0
    const/16 v1, 0x39

    const/16 v2, 0x30

    if-eq v0, v6, :cond_1f

    if-ne v0, v7, :cond_20

    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_29

    if-le v0, v1, :cond_20

    goto :goto_9

    :cond_20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_21

    if-le v0, v1, :cond_20

    :cond_21
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_24

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_23

    if-le v0, v1, :cond_22

    goto :goto_7

    :cond_22
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_24

    if-gt v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_6

    :cond_23
    :goto_7
    return v4

    :cond_24
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v5, :cond_25

    const/16 v5, 0x45

    if-ne v0, v5, :cond_28

    :cond_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-eq v0, v6, :cond_26

    if-ne v0, v7, :cond_27

    :cond_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    :cond_27
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_29

    if-gt v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-lt v0, v2, :cond_28

    if-gt v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_8

    :cond_28
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_29
    :goto_9
    return v4

    :cond_2a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->a:Z

    if-eqz v0, :cond_2b

    return v4

    :cond_2b
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_2d

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_a

    :cond_2c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_a

    :cond_2d
    if-ne v0, v2, :cond_2e

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->d:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$a;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static final n(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_0
.end method

.method abstract o()V
.end method

.method p()V
    .locals 1

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->n(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->o()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->e:Ljava/lang/Boolean;

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator;->f:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->f:I

    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->e:Ljava/lang/Boolean;

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->p()V

    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->e:Ljava/lang/Boolean;

    return v2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->e:Ljava/lang/Boolean;

    return v1
.end method
