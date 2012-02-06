m4_changequote([, ])
/*
 * U-boot uImage source file with multiple kernels, ramdisks
 *
 *	data = /incbin/("<filename>");
 */

/dts-v1/;

/ {
	description = "Linux Kernel with Initial Ramdisk and FDT";
	#address-cells = <1>;

	images {
		kernel@1 {
			description = "Medcom-Wide Linux Kernel VERSION";
			data = /incbin/("./vmlinuz-VERSION");
			type = "kernel";
			arch = "arm";
			os = "linux";
			compression = "none";
			load = <0x00008000>;
			entry = <0x00008000>;
			hash@1 {
				algo = "crc32";
			};
			hash@2 {
				algo = "sha1";
			};
		};

		ramdisk@1 {
			description = "Medcom-Wide Initial Ramdisk";
			data = /incbin/("./initrd.gz");
			type = "ramdisk";
			arch = "arm";
			os = "linux";
			load = <0x00300000>;
			compression = "none";
			hash@1 {
				algo = "crc32";
			};
			hash@2 {
				algo = "sha1";
			};
		};
m4_ifdef([UIMAGE_ENABLE_DTB], [
		fdt@1 {
			description = "Medcom-Wide Flattened Device Tree blob";
			data = /incbin/("./fdt.dtb");
			type = "flat_dt";
			arch = "arm";
			compression = "none";
			hash@1 {
				algo = "crc32";
			};
			hash@2 {
				algo = "sha1";
			};
		};
])
	};

	configurations {
		default = "config@1";

		config@1 {
			description = "Linux Kernel with Initial Ramdisk and FDT";
			kernel = "kernel@1";
			ramdisk = "ramdisk@1";
m4_ifdef([UIMAGE_ENABLE_DTB], [
			fdt = "fdt@1";
])
		};
	};
};
