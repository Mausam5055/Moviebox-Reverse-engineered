.class public final synthetic Lcom/transsion/baselib/locale/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/locale/d;

.field public final synthetic b:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/locale/b;->a:Lcom/transsion/baselib/locale/d;

    iput-object p2, p0, Lcom/transsion/baselib/locale/b;->b:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/locale/b;->a:Lcom/transsion/baselib/locale/d;

    iget-object v1, p0, Lcom/transsion/baselib/locale/b;->b:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/transsion/baselib/locale/d;->b(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V

    return-void
.end method
