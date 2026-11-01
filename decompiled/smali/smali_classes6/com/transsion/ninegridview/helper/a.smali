.class public final synthetic Lcom/transsion/ninegridview/helper/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/helper/a;->a:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/transsion/ninegridview/helper/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ninegridview/helper/a;->c:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/transsion/ninegridview/helper/a;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/ninegridview/helper/a;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/transsion/ninegridview/helper/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ninegridview/helper/a;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/ninegridview/helper/a;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ninegridview/helper/FileHelper;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
