--自定义算子的一个算子测试

set "operator.kafka.brokers"="192.168.0.2:9092";
set "serde.simpleserde.separator" = ",";

create input stream S
(id int ,name String,type int)
	 SERDE SimpleSerDe
	 SOURCE 'com.huawei.streaming.cql.executor.userdefined.WebSpout'
		 PROPERTIES ("port" = "7999","fixlength"="966");

	explain application simple;