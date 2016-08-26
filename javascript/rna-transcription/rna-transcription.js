function dnaTranscriber() {
};

dnaTranscriber.prototype.toRna = function(input) {
	new_str = "";
	for(i=0; i < input.length; i++){
		if(input[i] === 'C'){
			new_str += 'G';
		} else if (input[i] === 'G'){
			new_str += 'C';
		} else if (input[i] === 'A'){
			new_str += 'U';
		} else if (input[i] === 'T'){
			new_str += 'A';
		}
	};
	return new_str;
};

module.exports = dnaTranscriber;

