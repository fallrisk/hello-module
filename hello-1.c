
#include <linux/module.h>
#include <linux/kernel.h>

int hello_init(void)
{
    printk(KERN_ALERT "Hello World :)");
    return 0;
}

void hello_exit(void)
{
    printk(KERN_ALERT "Goodbye World!");
}

module_init(hello_init);
module_exit(hello_exit);
